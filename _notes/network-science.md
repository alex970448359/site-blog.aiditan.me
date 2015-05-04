---
layout:    note
permalink: /notes/network-science/
title:     Network Science
date:      2014-12-23 00:07:53 +0800
modified:  2014-12-23 00:07:53 +0800
mathjax:   true
---

# Basic Concepts

## Node & Edge

- 点 (node)
- 边 (edge)
- 有向边 (directed edge)
- 父 (parent)
- 子 (child)
- 无向边 (undirected edge)
- 邻居 (neighbour)
- 边界 (boundary)：$$\text{Pa_X} \cup \text{Nb_X}$$
- 图 (graph)
- 有向图 (directed graph)：所有边均有向
- 无向图 (undirected graph)：所有边均无向
- 度 (degree)
- 入度 (indegree)
- 出度 (outdegree)

## Subgraph

- 子图 (subgraph)
- 诱导子图 (induced subgraph)：子图中任意两节点的边与原图相同
- 完全子图 (complete subgraph)：任意两节点间均有边
- 最大子图 (clique)：任何更大的子图都不是clique
- upward closure：图中点的任意子集的边界仍属于该图的点集

## Path & Trail

- 路径 (path)：一个节点序列，前后节点是父 - 子，或邻居
- 有向路径 (directed path)：其中至少一条边是父 - 子（即有向）
- 祖先（ancestor）：有向路径的起点是终点的祖先
- 子孙（ancestor）：有向路径的终点是起点的子孙
- trail：一个节点序列，前后节点是父 - 子，或子 - 父，或邻居
- 联通图 (conected graph)：任意两个节点间有trail
- 拓扑排序 (topological)：一个点集的序列，前后节点是父 - 子，或邻居

## Cycle & Loop

- cycle：存在一个有向路径，从一个点出发回到这个点
- acyclic：不存在上述路径
- loop：存在一个trail
- 弦 (chord)：loop中连接非连续两点的边
- 弦图 (chord graph)
