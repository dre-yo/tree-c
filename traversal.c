#include "traversal.h"

#include <dirent.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>

void traverse_directory(const char *path) {
  printf("Traversing directory %s\n", path);
  struct dirent *entry;

  DIR *dir = opendir(path);
  if (dir == NULL) {
    printf("Failed to open directory %s\n", path);
    return;
  }

  while ((entry = readdir(dir)) != NULL) {
    printf("%s\n", entry->d_name);
  }
  closedir(dir);
}

int is_directory(const char *path) { return 1; }
