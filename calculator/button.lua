button = {
    numeric = {  -- table for numeric buttons
          bt1 = {
                  --button 1
          },
          bt2 = {
                  --button 2
          },
          bt3 = {

          },
          bt4 = {

          },
          bt5 = {

          },
          bt6 = {

          },
          bt7 = {

          },
          bt8 = {

          },
          bt9 = {

          },
          bt0 = {

          },
          dot = {
                 -- dot button -> "."
          },
    },
    
    operator = {  -- table for button of operators
        time = {
                  -- to multiply 
        },
        divide = {
                  -- to diviede
        },
        pluse = {
                  -- to add
        },
        divide = {
                  -- to divide
        },
        equal = {
                -- for equal operator
        },
    },

    math = {   -- table for mathematical opearator
        sin = {
                -- for sin
        },
        cos = {
                -- for cos
        },
        tan = {
                --for tan
        },
        log = {
                -- natural logarithms
        },
        exp = {
                --the base of natural logarithms
        },
        sqrt = {
                 --square root
        },
        pi = {
                 -- pi value = 3.14159265359

        },

    },

    clear ={
            -- to clear var1,
    },
    var1 = {
            -- variable to store expression
    },
}

button.var1 = iup.text{expand="HORIZONTAL",  --text layout to show the expression
    bgcolor="255 128 128",
    multiline="yes",
    size="240x30",
    border="yes",
    ReadOnly="yes",}

--there several buttons 
--we concatenate button to create expression
--when equal button pressed we evaluate expression

button.numeric.bt1 = iup.button{expand="yes",title="1",
    
    action=function()
        button.var1.value = button.var1.value.."1"  --concatenation  
    end
}
    
button.numeric.bt2 = iup.button{expand="yes",title="2",
    
    action=function()
       button.var1.value = button.var1.value.."2"   --concatenation  
    end
}
    
button.numeric.bt3 = iup.button{expand="yes",title="3",
    
    action=function()
        button.var1.value = button.var1.value.."3"   --concatenation  
    end
}
    
button.numeric.bt4 = iup.button{expand="yes",title="4",
    
    action=function()
        button.var1.value = button.var1.value.."4"  --concatenation  
    end
}
    
button.numeric.bt5 = iup.button{expand="yes",title="5",
    
    action=function()
        button.var1.value = button.var1.value.."5"  --concatenation  
    end
}
    
button.numeric.bt6 = iup.button{expand="yes",title="6",
    
    action=function()
        button.var1.value = button.var1.value.."6"  --concatenation  
    end
}
    
button.numeric.bt7 = iup.button{expand="yes",title="7",
    
    action=function()
        button.var1.value = button.var1.value.."7"  --concatenation  
    end
}
    
button.numeric.bt8 = iup.button{expand="yes",title="8",
    
    action=function()
        button.var1.value = button.var1.value.."8"   --concatenation  
    end
}

button.numeric.bt9 = iup.button{expand="yes",title="9",
    
    action=function()
        button.var1.value = button.var1.value.."9"  --concatenation  
    end
}
button.numeric.bt0 = iup.button{expand="yes",title="0",
    
    action=function()
        button.var1.value = button.var1.value.."0"   --concatenation  
    end
}
    
button.numeric.dot = iup.button{expand="yes",title=".",
    
    action=function()
        button.var1.value = button.var1.value.."."  --concatenation  
    end
}

button.operator.times = iup.button{expand="yes",title="*",
    
    action=function()
        button.var1.value = button.var1.value.."*"  --concatenation  
    end
}
    
button.operator.divide = iup.button{expand="yes",title="/",
    
    action=function()
        button.var1.value = button.var1.value.."/"  --concatenation  
    end
}
    
button.operator.plus = iup.button{expand="yes",title="+",
    
    action=function()
        button.var1.value = button.var1.value.."+"  --concatenation  
    end
}
    
button.operator.minus = iup.button{expand="yes",title="-",
    
    action=function()
        button.var1.value = button.var1.value.."-"   --concatenation  
    end
}
button.operator.equal = iup.button{expand="yes",title="=",
    
    action=function()
        f=load("return "..button.var1.value)   --return the evaluated value of var1.value(main_variable / expression),and store it into f function
        button.var1.value = f() --restore the solved expression
    end
}

-- buttons to solve mathematical function 
-- here we used math library to calculate mathematical function
button.math.sin = iup.button{expand="yes",title="sin",
    
    action = function()
        button.var1.value=button.sin(GUI.var1.value)
    end
}
    
button.math.cos = iup.button{expand="yes",title="cos",
        
    action = function()
        button.var1.value=math.cos(button.var1.value)
    end
}
    
button.math.tan = iup.button{expand="yes",title="tan",
    action = function()
        button.var1.value=math.tan(button.var1.value)
    end
}
    
button.math.log = iup.button{expand="yes",title="log",
        
    action = function()
        button.var1.value=math.log(button.var1.value)
    end
}
    
button.math.exp = iup.button{expand="yes",title="exp",
    
    action = function()
        button.var1.value=math.exp(button.var1.value)
    end
}
    
button.math.sqrt = iup.button{expand="yes",title="sqrt",
    
    action=function()
        button.var1.value = math.sqrt(button.var1.value)
    end
}

button.math.pi = iup.button{expand="yes",title="pi",
    
    action = function()
        button.var1.value=math.pi(button..var1.value)
    end
}
-- to clear variable var1  
button.clear = iup.button{expand="yes",title="Clear",
    
    action=function()
        button.var1.value = ""
    end
}