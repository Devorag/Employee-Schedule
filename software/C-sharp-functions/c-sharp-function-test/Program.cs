// See https://aka.ms/new-console-template for more information

Func<int, int, int> doMath = AddIt;

var divideIt = (int x, int y) => x/y;

Console.WriteLine(doMath(10,9));

doMath = MultiplyIt;
Console.WriteLine(doMath(10,9));

ShowMath(AddIt,100,500);
ShowMath(MultiplyIt,100,500);
ShowMath(divideIt, 900,10);

ShowMath((int x, int y) => x - y, 100, 1);

void ShowMath(Func<int, int, int> f, int x , int y) {
    Console.WriteLine(f(x,y));
}

int AddIt(int x, int y) {
    return x + y;
}

int MultiplyIt(int x, int y) {
    return x * y;
}
