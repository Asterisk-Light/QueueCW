program project1;
  
uses
  Crt;

var  
  queue:array[1..4] of string;
  people,selection:string;
  i:integer;
  sel:boolean;

procedure QDisplay();
  begin
    if (queue[1]=' ') and (queue[2]=' ') and (queue[3]=' ') and (queue[4]=' ') then
      begin
        writeln('Queue is Empty');
      end
    else
      begin
        writeln('Queue order: 1: ',queue[1],' 2: ',queue[2],' 3: ',queue[3],' 4: ',queue[4]);
      end;
  end;

procedure QAppend();
  begin
    writeln('how mant people would you like to add to the queue? (max 4)');
    readln(i);
    writeln('add people to your queue');
    for i := 1 to i do
    begin
      writeln('add person ', i);
      readln(people);
      queue[i]:=people;
    end;
  end;

procedure QDelete();
  begin
    if queue[1]<>' ' then
    begin
      queue[1]:=' ';
    end
    else if (queue[1]=' ') and (queue[2]<>' ') then
    begin
      queue[2]:=' ';
    end
    else if (queue[1]=' ') and (queue[2]=' ') and (queue[3]<>' ') then
    begin
      queue[3]:=' ';
    end
    else if (queue[1]=' ') and (queue[2]=' ') and (queue[3]=' ') and (queue[4]<>' ') then
    begin
      queue[4]:=' ';
    end;
  end;

begin
  ClrScr;
  sel:=true;
  while sel=true do
    begin
      writeln('Would you like to Display the Queue, Add to the Queue or Delete an element from the Queue or Exit?');
      readln(selection);
      case (selection) of
        'Add','add','1':QAppend();
        'Delete','delete','del','3':QDelete();
        'Display','display','2':QDisplay();
        'Exit','exit','4':exit;
      end;
    end;
  readln;
end.
 
 
 
 
 
