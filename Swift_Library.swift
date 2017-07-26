#SWIFT CODE

Variables are always initialized before use.
Array indices are checked for out-of-bounds errors.
Integers are checked for overflow.
Optionals ensure that nil values are handled explicitly.
Memory is managed automatically.
Error handling allows controlled recovery from unexpected failures.

#guide and sample code:
https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1

#swift programming can be tested on:
https://swift.sandbox.bluemix.net/#/repl

#Use let to make a constant and var to make a variable
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70  #If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon

#Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

#There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses. For example
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

#Use three double quotes (""") for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quote. For example:
let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
Except for this line.
Double quotes (") can appear without being escaped.
 
I still have \(apples + oranges) pieces of fruit.
"""

#Create arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
 
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

#To create an empty array or dictionary, use the initializer syntax.
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

#If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:]—for example, when you set a new value for a variable or pass an argument to a function.
shoppingList = []
occupations = [:]

#Use if and switch to make conditionals, and use for-in, while, and repeat-while to make loops. Parentheses around the condition or loop variable are optional. Braces around the body are required.
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {   #In an if statement, the conditional must be a Boolean expression—this means that code such as if score { ... } is an error, not an implicit comparison to zero
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

#Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"


