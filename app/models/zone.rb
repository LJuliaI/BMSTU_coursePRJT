class Zone < ApplicationRecord

  def self.initzone(zoneid)
    @zones.detect {|id| id.id == zoneid}
  end

  def self.initneighbours(zona)
    narr = []
    zona.neighbours.split(' ').each {|neighbour| narr << initzone(neighbour.to_i)}
    return narr
  end

  def self.routesearch(firstzone, lastzone)
    @zones = Zone.all.to_a
    head = initzone(firstzone)
    tail = initzone(lastzone)
    current = head
    current.mark = 0
    while tail.visited == false do
      neigbs = initneighbours(current)
      neigbs.each {|n|  n.mark = current.mark+1 if n.mark>current.mark+1}
      current.visited = true
      current = @zones.select{|zone| zone.visited == false}.sort_by{|zone| zone.mark}[0]
    end
    finalez  = []
    current = tail
    finalez << tail
    while (not (current == head))
      neigbs = initneighbours(current)
      current = neigbs.detect {|neig| neig.mark == current.mark-1 }
      finalez << current
    end
    return finalez
  end

  def self.resetzones
    Zone.where(visited: true).each {|zone| zone.visited=false}
    Zone.each {|zone| zone.mark = 1000000}
  end

end
