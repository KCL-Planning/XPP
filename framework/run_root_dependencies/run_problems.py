#! /usr/bin/env python3
import sys
import re
import os
import subprocess
import time


class Edge:

    def __init__(self, source, target):
        self.source = source
        self.target = target

    def __repr__(self):
        return self.source + " -> " + self.target + ";"

def minimizeGraph(edges):
    new_edges = []

    #nodes
    nodes = {}
    for e in edges:
        if not e.source in nodes:
            nodes[e.source] = 0
        nodes[e.source] += 1

    print(nodes)

    for e in edges:
        if nodes[e.source] < len(nodes) - 1:
            new_edges.append(e)

    return new_edges

def printGraph(edges, path):
    #new_edges = minimizeGraph(edges)
    new_edges = edges

    writer = open(path, "w")

    writer.write("digraph G {\n")
    for e in new_edges:
        writer.write(str(e))
    writer.write("}")

    writer.close()


def checkIfSolved(path):
    reader = open(path, "r")

    solved = False
    expansions = None

    for l in reader.readlines():
        if l.startswith("Solution found!") or l.startswith("Plan cost"):
            solved = True
        if l.startswith("Expanded") and not l.startswith("Expanded until"):
            expansions = l.split()[1]

    return (solved, expansions)

def getFileName(path):
    parts = path.split("/")
    return parts[len(parts)-1]


def runFD(problem, output):
    #cmd = "/./" + solver + "  --build release64 " + problem + " --translate-options --property_compilation_type  0 --search-options --heuristic \"h=blind()\" --search \"astar(blind())\" > " + output
    cmd = "/./" + solver + "  --build release64 " + problem + " --translate-options --property_compilation_type  0 --search-options --heuristic \"h=hmax()\" --search \"astar(hmax())\" > " + output
    #cmd = "/./" + solver + "  --build release64 " + problem + " --translate-options --property_compilation_type  0 --search-options --heuristic \"h=lmcut()\" --search \"astar(lmcut())\" > " + output
    #cmd = "/./" + solver + "  --build release64 " + problem + " --translate-options --property_compilation_type  0 --search-options --heuristic \"h=hc(cache_estimates=false, nogoods=false, prune_subsumed_preconditions=false)\" --search \"dfs(eval=blind, learn=ucrn(hc=h))\" > " + output
    #print(cmd)
    os.system(cmd)

def getProperties(folder):    
    files = os.listdir(folder)
    properties = []
    for f in files:
        properties.append(folder + "/" + f)
    properties.sort()
    return properties


def runOneProperty(resultFolder, property_path, edges):

    print("----------------------------------------------------")
    problem_path = problemFolder + "/problem.pddl" 
    property_name = getFileName(property_path) 

    print("property: " + property_name)

    #copy property to problem folder
    cmd = "cp " + property_path + " " + problemFolder + "/property_problem.pddl"
    #print(cmd)
    os.system(cmd)

    out_file = resultFolder + "/out-" + property_name 

    runFD(problem_path, out_file)

    #print(property_name + ": " + str(checkIfSolved(out_file)))
    (solved, expansions) = checkIfSolved(out_file)
    print("\t-> " + str(solved))

    if not solved:
        p_names = property_name.split("-")
        edges.append(Edge(p_names[0], p_names[1]))

    return (solved, expansions)



    
def run():
    properties = getProperties(propertyFolder)
    for p in properties:
        print(getFileName(p))

    edges = []
    solved_sum = 0.0
    expansions_sum = 0

    current_time = time.time()
    n = 1
    for p in properties:

        (solved, expansions) = runOneProperty(resultFolder, p, edges)
        print(str(n) + "/" + str(len(properties)))
        if not solved:
            solved_sum += 1
        expansions_sum += int(expansions)
        print("Solved: " + str(solved_sum))
        print("Expansions: " + str(expansions))
        n += 1

    print("---------------------------------------------------------------")
    print("Time: " + str(time.time() - current_time))
    print("Solved: " + str(solved_sum / len(properties)))
    print("Expansions: " + str(expansions_sum))

    printGraph(edges, graph_file)

def eval():
    properties = getProperties(propertyFolder)
    edges = []
    for p in properties:
        property_name = getFileName(p)
        out_file = resultFolder + "/out-" + property_name 
        solved = checkIfSolved(out_file)
        print(property_name)
        print("\t-> " + str(solved))

        if not solved:
            p_names = property_name.split("-")
        edges.append(Edge(p_names[0], p_names[1]))
     
    printGraph(edges, graph_file)

mode = sys.argv[1]
if mode == "-run":
    solver = sys.argv[2]
    problemFolder = sys.argv[3]
    propertyFolder = sys.argv[4]
    resultFolder = sys.argv[5]
    graph_file = resultFolder + "/graph.gv"  
    run()

if mode == "-eval":
    propertyFolder = sys.argv[3]
    resultFolder = sys.argv[4]
    graph_file = resultFolder + "/graph.gv"  
    eval()























