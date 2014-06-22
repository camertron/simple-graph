
## simple-graph [![Build Status](https://secure.travis-ci.org/camertron/simple-graph.png?branch=master)](http://travis-ci.org/camertron/simple-graph)

A simple, no-frills graph implementation.

## Installation

`gem install simple-graph`

## Usage

```ruby
require 'simple-graph'
```

### Adding Vertices

Let's model an airline that flies to certain cities:

```ruby
graph = SimpleGraph::Graph.new
graph.add_vertex('Seattle')
graph.add_vertex('Los Angeles')
graph.add_vertex('Denver')
graph.add_vertex('New York')
graph.add_vertex('Miami')
```

### Adding Edges

```ruby
graph.add_edge('Seattle', 'Los Angeles')
graph.add_edge('Seattle', 'Denver')
graph.add_edge('Los Angeles', 'Miami')
graph.add_edge('Denver', 'New York')
graph.add_edge('New York', 'Miami')
```

### Shortest Path

SimpleGraph doesn't support weighted edges, so let's pretend all these cities are equidistant from each other. We could also say we're trying to find the least number of layovers:

```ruby
graph.shortest_path('Seattle', 'Miami')  # ["Seattle", "Los Angeles", "Miami"]
```

## Requirements

None.

## Running Tests

`bundle exec rspec`

## Authors

* Cameron C. Dutro: http://github.com/camertron
