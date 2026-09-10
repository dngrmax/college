unit fractal_pas;

interface
uses GraphABC; // Графическая библиотека для рисования

var 
  angle: integer := 1;      // Текущий угол направления движения (логический, не в градусах)
  StepSize: integer := 10;  // Длина одного шага (масштаб фрактала)

// Процедура рисования одного шага
procedure Draw();

// Рекурсивная процедура построения фрактала
procedure Fractal(currDepth: integer; dividedAngle: integer);

implementation

// --------------------------------------------------
// Процедура Draw — рисует одну линию в текущем направлении
procedure Draw();
var 
  effAngle: integer; // Эффективный угол (приведённый к диапазону 0..3)
begin
  // Приведение угла к одному из четырёх направлений
  effAngle := angle mod 4;
  
  // Выбор направления движения в зависимости от угла
  case effAngle of
    0: LineRel(StepSize, 0);        // Вправо
    1, -3: LineRel(0, StepSize);   // Вниз
    2, -2: LineRel(-StepSize, 0);  // Влево
    3, -1: LineRel(0, -StepSize);  // Вверх
  end;
end;

// --------------------------------------------------
// Рекурсивная процедура Fractal
// currDepth — текущая глубина рекурсии
// dividedAngle — шаг изменения направления (+1 или -1)

procedure Fractal(currDepth: integer; dividedAngle: integer);
begin
  // База рекурсии: если глубина исчерпана — выходим
  if (currDepth <= 0) then exit;
 
  // Уменьшение глубины перед дальнейшими рекурсивными вызовами
  Dec(currDepth);
 
  // Первая группа рекурсивных вызовов
  Fractal(currDepth, dividedAngle);   // Рекурсивное ветвление
  Draw();                             // Рисование сегмента
  Fractal(currDepth, -dividedAngle);  // Ветвление с обратным направлением
  Draw();
  Fractal(currDepth, dividedAngle);
 
  // Изменение направления поворота
  angle += dividedAngle;
  Draw();
  angle += dividedAngle;
 
  // Вторая группа рекурсивных вызовов
  Fractal(currDepth, -dividedAngle);
  Draw();
  Fractal(currDepth, dividedAngle);
  Draw();
  Fractal(currDepth, -dividedAngle);
 
  // Возврат угла в предыдущее состояние
  angle -= dividedAngle;
  Draw();
  angle -= dividedAngle;
 
  // Заключительная группа рекурсивных вызовов
  Fractal(currDepth, dividedAngle);
  Draw();
  Fractal(currDepth, -dividedAngle);
  Draw();
  Fractal(currDepth, dividedAngle);
end;

end.
