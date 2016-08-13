#include "Interface.h"

using namespace std;

int main(int argc, char * argv[])
{
    unsigned int dim;

    if (argc > 1)
        dim = (unsigned int)stoi(argv[1]);
    else
    {
        cout << "Dim-> " << endl;
        cin >> dim;
    }

    init(dim);
//    output_matr();

    time_t time = clock();
    calc();
    cout << "Time taken: " << double(clock() - time) / CLOCKS_PER_SEC << endl;

//    print_res();

//    getchar();
    return 0;
}
