class Zone < ApplicationRecord

  def self.initzone(zoneid)                                     #gets id, returns zone
    @zones.detect {|id| id.id == zoneid}
  end

  def self.initneighbours(zona)                                #gets zone, returns all adjacent zones
    narr = []
    zona.neighbours.split(' ').each {|neighbour| narr << initzone(neighbour.to_i)}
    return narr
  end

  def self.routesearch(firstzone, lastzone)                   #gets two id, returns all zones to connect them
    @zones = Zone.all.to_a
    head = initzone(firstzone)
    tail = initzone(lastzone)
    current = head
    current.mark = 0
    while tail.visited == false do                             #Implementation of Dextra algoritm for zones
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
      finalez << current                                              #forming array of zones
    end
    return finalez
  end
end
