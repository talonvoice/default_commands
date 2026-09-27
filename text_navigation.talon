# Text navigation
move down:
    # help: Move the cursor down one line
    edit.down()
move left:
    # help: Move the cursor left one character
    edit.left()
move right:
    # help: Move the cursor right one character
    edit.right()
move up:
    # help: Move the cursor up one line
    edit.up()

move to [the] end [of [the] document] | go to [the] end [of [the] document] | move to [the] bottom [of [the] document] | go to [the] bottom [of [the] document]:
    # help: Move the cursor to the end of the document
    edit.file_end()
move to [the] end of [the] line | go to [the] end of [the] line:
    # help: Move the cursor to the end of the line
    edit.line_end()
move to [the] end of [the] paragraph | go to [the] end of [the] paragraph:
    # help: Move the cursor to the end of the paragraph
    edit.paragraph_end()
move to [the] end of [the] selection | go to [the] end of [the] selection:
    # help: Move the cursor to the end of the current selection
    # FIXME? might depend on caret direction / OS
    edit.right()
move to [the] end of [the] sentence | go to [the] end of [the] sentence:
    # help: Move the cursor to the end of the sentence
    edit.sentence_end()
move to [the] end of [the] word | go to [the] end of [the] word:
    # help: Move the cursor to the end of the word
    edit.select_word()
    edit.right()
move to [the] beginning [of [the] document] | go to [the] beginning [of [the] document] | move to [the] top [of [the] document] | go to [the] top [of [the] document]:
    # help: Move the cursor to the beginning of the document
    edit.file_start()
move to [the] beginning of [the] line | go to [the] beginning of [the] line:
    # help: Move the cursor to the beginning of the line
    edit.line_start()
move to [the] beginning of [the] paragraph | go to [the] beginning of [the] paragraph:
    # help: Move the cursor to the beginning of the paragraph
    edit.paragraph_start()
move to [the] beginning of [the] selection | go to [the] beginning of [the] selection:
    # help: Move the cursor to the beginning of the current selection
    # FIXME? might depend on caret direction / OS
    edit.left()
move to [the] beginning of [the] sentence | go to [the] beginning of [the] sentence:
    # help: Move the cursor to the beginning of the sentence
    edit.sentence_start()
move to [the] beginning of [the] word | go to [the] beginning of [the] word:
    # help: Move the cursor to the beginning of the word
    edit.select_word()
    edit.left()

move back [by] <number> characters | move backward [by] <number> characters | move back [by] one character | move back [[by] [a] character] | move backward [by] one character | move backward [[by] [a] character] | move left [by] <number> characters | move left [by] one character | move left [by] [a] character:
    # help: Move the cursor back by the given number of characters
    number = number or 1
    edit.left()
    repeat(number-1)
move back [by] <number> lines | move backward [by] <number> lines | move back [by] one line | move back [by] [a] line | move backward [by] one line | move backward [by] [a] line:
    # help: Move the cursor back by the given number of lines
    number = number or 1
    edit.line_up()
    repeat(number-1)
move back [by] <number> paragraphs | move backward [by] <number> paragraphs | move back [by] one paragraph | move back [by] [a] paragraph | move backward [by] one paragraph | move backward [by] [a] paragraph:
    # help: Move the cursor back by the given number of paragraphs
    number = number or 1
    edit.paragraph_previous()
    repeat(number-1)
move back [by] <number> sentences | move backward [by] <number> sentences | move back [by] one sentence | move back [by] [a] sentence | move backward [by] one sentence | move backward [by] [a] sentence | move left [by] <number> sentences | move left [by] one sentence | move left [by] [a] sentence:
    # help: Move the cursor back by the given number of sentences
    number = number or 1
    edit.sentence_previous()
    repeat(number-1)
move back [by] <number> words | move backward [by] <number> words | move back [by] one word | move back [by] [a] word | move backward [by] one word | move backward [by] [a] word | move left [by] <number> words | move left [by] one word | move left [by] [a] word:
    # help: Move the cursor back by the given number of words
    number = number or 1
    edit.word_left()
    repeat(number-1)
move down [by] <number> lines | move down [by] one line | move down [by] [a] line:
    # help: Move the cursor down by the given number of lines
    number = number or 1
    edit.line_down()
    repeat(number-1)
move down [by] <number> paragraphs | move down [by] one paragraph | move down [by] [a] paragraph:
    # help: Move the cursor down by the given number of paragraphs
    number = number or 1
    edit.paragraph_next()
    repeat(number-1)
move forward [by] <number> characters | move forward [by] one character | move forward [[by] [a] character] | move right [by] <number> characters | move right [by] one character | move right [by] [a] character:
    # help: Move the cursor forward by the given number of characters
    number = number or 1
    edit.right()
    repeat(number-1)
move forward [by] <number> lines | move forward [by] one line | move forward [by] [a] line:
    # help: Move the cursor forward by the given number of lines
    number = number or 1
    edit.line_down()
    repeat(number-1)
move forward [by] <number> paragraphs | move forward [by] one paragraph | move forward [by] [a] paragraph:
    # help: Move the cursor forward by the given number of paragraphs
    number = number or 1
    edit.paragraph_next()
    repeat(number-1)
move forward [by] <number> sentences | move forward [by] one sentence | move forward [by] [a] sentence | move right [by] <number> sentences | move right [by] one sentence | move right [by] [a] sentence:
    # help: Move the cursor forward by the given number of sentences
    number = number or 1
    edit.sentence_next()
    repeat(number-1)
move forward [by] <number> words | move forward [by] one word | move forward [by] [a] word | move right [by] <number> words | move right [by] one word | move right [by] [a] word:
    # help: Move the cursor forward by the given number of words
    number = number or 1
    edit.word_right()
    repeat(number-1)
move up [by] <number> lines | move up [by] one line | move up [by] [a] line:
    # help: Move the cursor up by the given number of lines
    number = number or 1
    edit.line_up()
    repeat(number-1)
move up [by] <number> paragraphs | move up [by] one paragraph | move up [by] [a] paragraph:
    # help: Move the cursor up by the given number of paragraphs
    number = number or 1
    edit.paragraph_previous()
    repeat(number-1)

move after <edit.text> | insert after <edit.text>:
    # help: Move the cursor after the target text
    edit.target_after(edit.text_list)
move before <edit.text> | insert before <edit.text>:
    # help: Move the cursor before the target text
    edit.target_before(edit.text_list)
