module mylib;

import std.conv;
import std.file : readText;
import std.string : chomp;

export extern(C) int rand() {
      return readText("random.txt").chomp.to!int;
}

