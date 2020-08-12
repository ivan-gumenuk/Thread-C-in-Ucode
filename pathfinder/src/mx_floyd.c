#include "libmx.h"

int **mx_create_dist_matrix(int **matrix, int size) {
    int i;
    int j;  //Floyd Warshall Algorithm
    int k;
    int INF = 999999999; //infinity
    int **dist = mx_create_zero_matrix(size);
    
    for (i = 0; i < size; i++) 
        for (j = 0; j < size; j++)
            dist[i][j] = matrix[i][j];
            
    for (k = 0; k < size; k++) { 
        for (i = 0; i < size; i++) { 
            for (j = 0; j < size; j++) {
                if (dist[i][k] < INF && dist[i][k] + dist[k][j] < dist[i][j]) {
                    dist[i][j] = dist[i][k] + dist[k][j];
                }
            }
        } 
    }
    return dist;
}
