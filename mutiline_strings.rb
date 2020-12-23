interpolation = "interpolated"

multiline_double_quotes = "
        first line "withing double quotes"
        second line #{interpolation}
        third line 'withing single quotes'
"

print multiline_double_quotes
# mutiline_strings.rb:4: syntax error, unexpected local variable or method, expecting end-of-input

multiline_single_quotes = '
        first line "withing double quotes"
        second line #{interpolation}
        third line 'withing single quotes'
'

print multiline_single_quotes
# mutiline_strings.rb:15: syntax error, unexpected local variable or method, expecting end-of-input

multiline_uppercase_q = %Q(
        first line "withing double qoutes"
        second line #{interpolation}
        third line 'withing single quotes'
)

print multiline_uppercase_q
#
#        first line "withing double qoutes"
#        second line interpolated
#        third line 'withing single quotes'

multiline_lowercase_q = %q(
        first line "withing double qoutes"
        second line #{interpolation}
        third line 'withing single quotes'
)

print multiline_lowercase_q
#
#        first line "within double"
#        second line #{interpolation}
#        third line 'withing single quotes'

multiline_indention = <<-ABC
        first line "withing double qoutes"
        second line #{interpolation}
        third line 'withing single quotes'
ABC

print multiline_indention
#        first line "withing double qoutes"
#        second line interpolated
#        third line 'withing single quotes'
# --> no extra line printed. Can use any wording as start/end just it has to be the same and does not exist within string

multiline_no_indention = <<~ABC
        first line "withing double qoutes"
        second line #{interpolation}
        third line 'withing single quotes'
ABC

print multiline_no_indention
# first line "withing double qoutes"
# second line interpolated
# third line 'withing single quotes'
# --> no extra line printed. Can use any wording as start/end just it has to be the same and does not exist within string