# Text deletion
delete that | delete this | delete [the] selection:
    # help: Delete the selected text
    edit.delete()

delete all:
    # help: Delete all the text in the document
    edit.delete_all()
delete [this] character:
    # help: Delete the character at the cursor
    edit.delete_right()
delete [this] line:
    # help: Delete the line at the cursor
    edit.delete_line()
delete [this] paragraph:
    # help: Delete the paragraph at the cursor
    edit.delete_paragraph()
delete [this] sentence:
    # help: Delete the sentence at the cursor
    edit.delete_sentence()
delete [this] word:
    # help: Delete the word at the cursor
    edit.delete_word()
delete [the] next character | delete forward:
    # help: Delete the next character
    edit.delete_right()
delete [the] next <number> characters:
    # help: Delete the given number of characters after the cursor
    edit.delete_right()
    repeat(number-1)
delete [the] next line:
    # help: Delete the line after the cursor
    edit.line_down()
    edit.delete_line()
delete [the] next <number> lines:
    # help: Delete the given number of lines after the cursor
    edit.line_down()
    edit.delete_line()
    repeat(number-1)
delete [the] next paragraph:
    # help: Delete the paragraph after the cursor
    edit.paragraph_next()
    edit.delete_paragraph()
delete [the] next <number> paragraphs:
    # help: Delete the given number of paragraphs after the cursor
    edit.paragraph_next()
    edit.delete_paragraph()
    repeat(number-1)
delete [the] next sentence:
    # help: Delete the sentence after the cursor
    edit.sentence_next()
    edit.delete_sentence()
delete [the] next <number> sentences:
    # help: Delete the given number of sentences after the cursor
    edit.sentence_next()
    edit.delete_sentence()
    repeat(number-1)
delete [the] next word:
    # help: Delete the word after the cursor
    edit.word_right()
    edit.delete_word()
delete [the] next <number> words:
    # help: Delete the given number of words after the cursor
    edit.word_right()
    edit.delete_word()
    repeat(number-1)
delete [the] previous character | backspace [one]:
    # help: Delete the character before the cursor
    edit.delete_left()
delete [the] previous <number> characters | backspace <number>:
    # help: Delete the given number of characters before the cursor
    edit.delete_left()
    repeat(number-1)
delete [the] previous line:
    # help: Delete the line before the cursor
    edit.line_start()
    edit.extend_line_up()
    edit.delete()
delete [the] previous <number> lines:
    # help: Delete the given number of lines before the cursor
    edit.line_start()
    edit.extend_line_up()
    repeat(number-1)
    edit.delete()
delete [the] previous paragraph:
    # help: Delete the paragraph before the cursor
    edit.paragraph_start()
    edit.extend_paragraph_previous()
    edit.delete()
delete [the] previous <number> paragraphs:
    # help: Delete the given number of paragraphs before the cursor
    edit.paragraph_start()
    edit.extend_paragraph_previous()
    repeat(number-1)
    edit.delete()
delete [the] previous sentence:
    # help: Delete the sentence before the cursor
    edit.sentence_start()
    edit.extend_sentence_previous()
    edit.delete()
delete [the] previous <number> sentences:
    # help: Delete the given number of sentences before the cursor
    edit.sentence_start()
    edit.extend_sentence_previous()
    repeat(number-1)
    edit.delete()
delete [the] previous word:
    # help: Delete the word before the cursor
    edit.word_left()
    edit.delete_word()
delete [the] previous <number> words:
    # help: Delete the given number of words before the cursor
    edit.extend_word_left()
    repeat(number-1)
    edit.delete()

delete <edit.text> [through [the word] <edit.text>]:
    # help: Delete the target text
    edit.target_delete(edit.text_list)
