# encoding: UTF-8

require 'spec_helper'

describe SimpleGraph do
  let(:graph) { SimpleGraph::Graph.new }

  describe '#add_vertex' do
    it 'should add vertices correctly' do
      graph.add_vertex('Seattle').tap do |vertex|
        expect(vertex).to be_a(SimpleGraph::Vertex)
        expect(vertex.value).to eq('Seattle')
        expect(vertex.neighbors).to eq({})
      end
    end
  end

  describe '#add_edge' do
    it 'should add edges correctly' do
      seattle = graph.add_vertex('Seattle')
      la = graph.add_vertex('Los Angeles')
      graph.add_edge('Seattle', 'Los Angeles')
      expect(seattle.neighbors).to include('Los Angeles')
    end
  end

  context 'with a nice graph' do
    before(:each) do
      graph.add_vertex('Seattle')
      graph.add_vertex('Los Angeles')
      graph.add_vertex('Denver')
      graph.add_vertex('New York')
      graph.add_vertex('Miami')

      graph.add_edge('Seattle', 'Los Angeles')
      graph.add_edge('Seattle', 'Denver')
      graph.add_edge('Los Angeles', 'Miami')
      graph.add_edge('Denver', 'New York')
      graph.add_edge('New York', 'Miami')
    end

    describe '#shortest_path' do
      it 'finds the shortest path' do
        expect(graph.shortest_path('Seattle', 'Miami')).to eq([
          "Seattle", "Los Angeles", "Miami"
        ])
      end
    end
  end
end
