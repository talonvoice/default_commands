# Text editing
copy that | copy this | copy [the] selection:
    # help: Copy the selected text
    edit.copy()

cut that | cut this | cut [the] selection:
    # help: Cut the selected text
    edit.cut()

paste that | paste this | paste [[the] clipboard] here:
    # help: Paste the contents of the clipboard at the cursor
    edit.paste()

redo that | redo this:
    # help: Redo the last undo
    edit.redo()

undo that | undo this | scratch that:
    # help: Undo the last change
    edit.undo()

capitalize that | capitalize this | capitalize [the] selection | cap that | cap this | cap [the] selection:
    # help: Make the selected text capitalized
    text = edit.selected_text()
    start = string.slice(text, 0, 1)
    start = start or ""
    start = string.upper(start)
    rest = string.slice(text, 1)
    rest = rest or ""
    if text: insert("{start}{rest}")

correct that | correct this | correct [the] selection:
    # help: Open the correction window showing correction options for the selected text
    correct.show()

bold that | bold this | bold [the] selection:
    # help: Bold the selection
    edit.bold()
italicize that | italicize this | italicize [the] selection:
    # help: Italicize the selection
    edit.italic()
underline that | underline this | underline [the] selection:
    # help: Underline the selection
    edit.underline()

lowercase that | lowercase this | lowercase [the] selection:
    # help: Make the selected text lowercase
    text = edit.selected_text()
    if text: insert(string.lower(text))

put [curly] braces around that | put [curly] braces around [the] selection:
    # help: Put curly braces around the selected text
    text = edit.selected_text()
    paste("{{{text}}}")
put [double] curly quotes around that | put [double] curly quotes around [the] selection | curly quote that | put [double] smart quotes around that | put [double] smart quotes around [the] selection | smart quote that:
    # help: Put double curly quotes around the selected text
    text = edit.selected_text()
    paste('“{text}”')
put [double] quotes around that | put [double] quotes around [the] selection | quote that:
    # help: Put double quotes around the selected text
    text = edit.selected_text()
    paste('"{text}"')
put parentheses around that | put parentheses around [the] selection:
    # help: Put parentheses around the selected text
    text = edit.selected_text()
    paste("({text})")
put single curly quotes around that | put single curly quotes around [the] selection | put single smart quotes around that | put single smart quotes around [the] selection:
    # help: Put single curly quotes around the selected text
    text = edit.selected_text()
    paste("‘{text}’")
put single quotes around that | put single quotes around [the] selection:
    # help: Put single quotes around the selected text
    text = edit.selected_text()
    paste("'{text}'")
put [square] brackets around that | put [square] brackets around [the] selection:
    # help: Put square brackets around the selected text
    text = edit.selected_text()
    paste("[{text}]")

uppercase that | uppercase this | uppercase [the] selection:
    # help: Make the selected text uppercase
    text = edit.selected_text()
    if text: insert(string.upper(text))

capitalize <edit.text> [through [the word] <edit.text>]:
    # help: Capitalize the target text
    edit.target_capitalize(edit.text_list)
lowercase <edit.text> [through [the word] <edit.text>]:
    # help: Lowercase the target text
    edit.target_lower(edit.text_list)
uppercase <edit.text> [through [the word] <edit.text>]:
    # help: Uppercase the target text
    edit.target_upper(edit.text_list)

replace <edit.text> [through [the word] <edit.text>] with <phrase> | change <edit.text> [through [the word] <edit.text>] to <phrase>:
    # help: Replace the target text with the phrase
    edit.target_replace(edit.text_list, "{phrase}")

correct [the word] <edit.text>:
    # help: Open the correction window and show correction options for the target text
    correct.target(edit.text_list)

bold <edit.text> [through [the word] <edit.text>]:
    # help: Bold the target text
    edit.target_bold(edit.text_list)

italicize <edit.text> [through [the word] <edit.text>]:
    # help: Italicize the target text
    edit.target_italic(edit.text_list)

underline <edit.text> [through [the word] <edit.text>]:
    # help: Underline the target text
    edit.target_underline(edit.text_list)

insert <phrase> after <edit.text>:
    # help: Insert the phrase after the target text
    edit.target_insert_after(edit.text_list, " {phrase}")
insert <phrase> before <edit.text>:
    # help: Insert the phrase before the target text
    edit.target_insert_before(edit.text_list, "{phrase} ")

put [curly] braces around <edit.text> [through [the word] <edit.text>]:
    # help: Put curly braces around the target text
    edit.target_wrap(edit.text_list, "{", "}")
put [double] curly quotes around <edit.text> [through [the word] <edit.text>] | put [double] smart quotes around <edit.text> [through [the word] <edit.text>]:
    # help: Put double curly quotes around the target text
    edit.target_wrap(edit.text_list, '“', "”")
put [double] quotes around <edit.text> [through [the word] <edit.text>]:
    # help: Put double quotes around the target text
    edit.target_wrap(edit.text_list, '"', '"')
put parentheses around <edit.text> [through [the word] <edit.text>]:
    # help: Put parentheses around the target text
    edit.target_wrap(edit.text_list, '(', ')')
put single curly quotes around <edit.text> [through [the word] <edit.text>] | put single smart quotes around <edit.text> [through [the word] <edit.text>]:
    # help: Put single curly quotes around the target text
    edit.target_wrap(edit.text_list, "‘", "’")
put single quotes around <edit.text> [through [the word] <edit.text>]:
    # help: Put single quotes around the target text
    edit.target_wrap(edit.text_list, "'", "'")
put [square] brackets around <edit.text> [through [the word] <edit.text>]:
    # help: Put square brackets around the target text
    edit.target_wrap(edit.text_list, "[", "]")
