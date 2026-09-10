// ПРОГРАММА визуализации очереди
const
  MAX_SIZE = 5; // Максимальный размер очереди для наглядности переполнения

type
  TQueue = record
    data: array[1..MAX_SIZE] of integer;
    head: integer;  // Индекс начала очереди (откуда берем)
    tail: integer;  // Индекс конца очереди (куда добавляем)
    count: integer; // Текущее количество элементов
  end;

//------------ФУНКЦИИ----------------
// Функция проверки на пустоту
function IsEmpty(q: TQueue): boolean;
begin
  Result := (q.count = 0);
end;


// Функция проверки на переполнение
function IsFull(q: TQueue): boolean;
begin
  Result := (q.count = MAX_SIZE);
end;



// ---------ПРОЦЕДУРЫ--------------------
// Процедура инициализации пустой очереди
procedure InitQueue(var q: TQueue);
begin
  q.head := 1;
  q.tail := 1;
  q.count := 0;
end;




// Добавление элемента в очередь (Enqueue)
procedure Enqueue(var q: TQueue; val: integer);
begin
  if IsFull(q) then
    println('Ошибка: Очередь переполнена! Невозможно добавить элемент.')
  else
  begin
    q.data[q.tail] := val;
    // Сдвигаем хвост по кольцу
    q.tail := (q.tail mod MAX_SIZE) + 1;
    q.count := q.count + 1;
    println('Элемент ', val, ' успешно добавлен.');
  end;
end;



// Извлечение элемента из очереди (Dequeue)
procedure Dequeue(var q: TQueue);
var
  val: integer;
begin
  if IsEmpty(q) then
    println('Ошибка: Очередь пуста! Нечего извлекать.')
  else
  begin
    val := q.data[q.head];
    // Сдвигаем голову по кольцу
    q.head := (q.head mod MAX_SIZE) + 1;
    q.count := q.count - 1;
    println('Извлечен элемент: ', val);
  end;
end;



// Наглядная визуализация содержимого очереди
procedure PrintQueue(q: TQueue);
var
  curr: integer;
begin
  if IsEmpty(q) then
    println('Состояние очереди: [ ПУСТО ]')
  else
  begin
    print('Состояние очереди: ВЫХОД <- [ ');
    curr := q.head;
    for var i := 1 to q.count do
    begin
      print(q.data[curr], ' ');
      curr := (curr mod MAX_SIZE) + 1;
    end;
    println('] <- ВХОД  (Заполнено: ', q.count, '/', MAX_SIZE, ')');
  end;
end;



//-----------ОСНОВНОЙ БЛОК-----------------
begin
  var
  q: TQueue;
  var choice: integer;
  
  InitQueue(q);
  repeat
    println;
    println('=================================');
    println('          МЕНЮ ОЧЕРЕДИ           ');
    println('=================================');
    println('1. Добавить элемент (Enqueue)');
    println('2. Извлечь элемент (Dequeue)');
    println('3. Показать очередь (Визуализация)');
    println('0. Выход');
    println('=================================');
    print('Выберите действие: ');
    choice := ReadInteger();
    
    println;
    
    case choice of
      1: 
        begin
          print('Введите целое число для добавления: ');
          var value := ReadInteger();
          Enqueue(q, value);
          PrintQueue(q); // Сразу показываем результат
        end;
      2: 
        begin
          Dequeue(q);
          PrintQueue(q); // Сразу показываем результат
        end;
      3: PrintQueue(q);
      0: println('Завершение работы программы...');
    else
      println('Неверный пункт меню. Попробуйте снова.');
    end;
    
  until choice = 0;
end.