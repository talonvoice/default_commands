# Text selection
select [this] character:
    # help: Select the character at the cursor
    edit.select_none()
    edit.extend_right()
select [this] line:
    # help: Select the line at the cursor
    edit.select_line()
select [this] paragraph:
    # help: Select the paragraph at the cursor
    edit.select_paragraph()
select [this] sentence:
    # help: Select the sentence at the cursor
    edit.select_sentence()
select [this] word:
    # help: Select the word at the cursor
    edit.select_word()
select all [[the] text] | select [entire] document:
    # help: Select the entire document
    edit.select_all()
select [the] next character:
    # help: Select the next character after the cursor
    edit.extend_right()
select [the] next <number> characters:
    # help: Select the given number of characters after the cursor
    edit.extend_right()
    repeat(number-1)
select [the] next line:
    # help: Select the next line after the cursor
    edit.extend_line_down()
select [the] next <number> lines:
    # help: Select the given number of lines after the cursor
    edit.extend_line_down()
    repeat(number-1)
select [the] next paragraph:
    # help: Select the next paragraph after the cursor
    edit.extend_paragraph_next()
select [the] next <number> paragraphs:
    # help: Select the given number of paragraphs after the cursor
    edit.extend_paragraph_next()
    repeat(number-1)
select [the] next sentence:
    # help: Select the next sentence after the cursor
    edit.extend_sentence_next()
select [the] next <number> sentences:
    # help: Select the given number of sentences after the cursor
    edit.extend_sentence_next()
    repeat(number-1)
select [the] next word:
    # help: Select the next word after the cursor
    edit.extend_word_right()
select [the] next <number> words:
    # help: Select the given number of words after the cursor
    edit.extend_word_right()
    repeat(number-1)
select [the] previous character:
    # help: Select the previous character before the cursor
    edit.select_none()
    edit.extend_left()
select [the] previous <number> characters:
    # help: Select the given number of characters before the cursor
    edit.select_none()
    edit.extend_left()
    repeat(number - 1)
select [the] previous line:
    # help: Select the previous line before the cursor
    edit.line_start()
    edit.extend_line_up()
select [the] previous <number> lines:
    # help: Select the given number of lines before the cursor
    edit.line_start()
    edit.extend_line_up()
    repeat(number-1)
select [the] previous paragraph:
    # help: Select the previous paragraph before the cursor
    edit.paragraph_start()
    edit.extend_paragraph_previous()
select [the] previous <number> paragraphs:
    # help: Select the given number of paragraphs before the cursor
    edit.paragraph_start()
    edit.extend_paragraph_previous()
    repeat(number-1)
select [the] previous sentence:
    # help: Select the previous sentence before the cursor
    edit.sentence_start()
    edit.extend_sentence_previous()
select [the] previous <number> sentences:
    # help: Select the given number of sentences before the cursor
    edit.sentence_start()
    edit.extend_sentence_previous()
    repeat(number-1)
select [the] previous word:
    # help: Select the previous word before the cursor
    edit.word_left()
    edit.select_word()
select [the] previous <number> words:
    # help: Select the given number of words before the cursor
    edit.word_left()
    edit.select_word()
    edit.right()
    edit.extend_word_left()
    repeat(number-1)
select that:
    # help: Find and select the last dictated phrase in the current field.
    dictate.select_last()
deselect that | deselect this | unselect that | unselect this:
    # help: Unselect the currently selected text
    edit.select_none()

extend [the] selection back [by] <number> characters | extend [the] selection backward [by] <number> characters | extend [the] selection back [by] one character | extend [the] selection backward [by] one character:
    # help: Extend the selection back by the given number of characters
    number = number or 1
    edit.extend_left()
    repeat(number-1)
extend [the] selection back [by] <number> lines | extend [the] selection backward [by] <number> lines | extend [the] selection back [by] one line | extend [the] selection backward [by] one line:
    # help: Extend the selection back by the given number of lines
    number = number or 1
    edit.extend_line_up()
    repeat(number-1)
extend [the] selection back [by] <number> paragraphs | extend [the] selection backward [by] <number> paragraphs | extend [the] selection back [by] one paragraph | extend [the] selection backward [by] one paragraph:
    # help: Extend the selection back by the given number of paragraphs
    number = number or 1
    edit.extend_paragraph_previous()
    repeat(number-1)
extend [the] selection back [by] <number> sentences | extend [the] selection backward [by] <number> sentences | extend [the] selection back [by] one sentence | extend [the] selection backward [by] one sentence:
    # help: Extend the selection back by the given number of sentences
    number = number or 1
    edit.extend_sentence_previous()
    repeat(number-1)
extend [the] selection back [by] <number> words | extend [the] selection backward [by] <number> words | extend [the] selection back [by] one word | extend [the] selection backward [by] one word:
    # help: Extend the selection back by the given number of words
    number = number or 1
    edit.extend_word_left()
    repeat(number-1)
extend [the] selection [forward] [by] <number> characters | extend [the] selection [forward] [by] one character:
    # help: Extend the selection forward by the given number of characters
    number = number or 1
    edit.extend_right()
    repeat(number-1)
extend [the] selection [forward] [by] <number> lines | extend [the] selection [forward] [by] one line:
    # help: Extend the selection forward by the given number of lines
    number = number or 1
    edit.extend_line_down()
    repeat(number-1)
extend [the] selection [forward] [by] <number> paragraphs | extend [the] selection [forward] [by] one paragraph:
    # help: Extend the selection forward by the given number of paragraphs
    number = number or 1
    edit.extend_paragraph_next()
    repeat(number-1)
extend [the] selection [forward] [by] <number> sentences | extend [the] selection [forward] [by] one sentence:
    # help: Extend the selection forward by the given number of sentences
    number = number or 1
    edit.extend_sentence_next()
    repeat(number-1)
extend [the] selection [forward] [by] <number> words | extend [the] selection [forward] [by] one word:
    # help: Extend the selection forward by the given number of words
    number = number or 1
    edit.extend_word_right()
    repeat(number-1)
extend [the] selection to [the] beginning | select to [the] beginning:
    # help: Select to the beginning of the document
    edit.extend_file_start()
extend [the] selection to [the] end | select to [the] end:
    # help: Select to the end of the document
    edit.extend_file_end()

select [the word] <edit.text>:
    # help: Select the target text
    edit.target_select(edit.text_list)
select [the word] <edit.text> through [the word] <edit.text> | select [from] [the word] <edit.text> to [the word] <edit.text>:
    # help: Select from the first target text to the second
    edit.target_select(edit.text_list)
