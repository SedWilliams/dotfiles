# Phrases Notes

Based on my exploration of the codebase, there is no standalone "Phrases" type/class. Instead, the Phrases structure in this assignment is implemented as indexed string collections stored as instance fields within the Language class (Language.java).

## Expected Format

The "Phrases" concept consists of four categories of string arrays, each accessed by integer index:

| Category           | Getter Method              | Min Entries      | Purpose                                                                                                                       |
|--------------------|----------------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------|
| Config phrases     | getConfigPhrase(int i)     | 10 (indices 0-9) | UI labels: separator line, "Language:", "Time Zone:", "Color:", "Std Out:", "Std Err:", "Log Dir:", suffix, "University:", "Club:" |
| University phrases | getUniversityPhrase(int i) | 1 (index 0)      | University name/description                                                                                                   |
| Club phrases       | getClubPhrase(int i)       | 1 (index 0)      | Club name/description                                                                                                         |
| Greeting phrases   | getGreetingPhrase(int i)   | 1 (index 0)      | Greeting string                                                                                                               |

## How It Works

1. **Storage:** You need to add instance fields to Language.java (currently empty at lines 32-33) -- likely String[] arrays or ArrayList<String>, one per category.

2. **Population:** The populate*Phrases() methods (e.g., populateEnglishPhrases(), populateAlienPhrases()) fill those arrays with language-specific strings.

3. **Access:** Consumer classes like Config.java and Greeting.java call the getter methods with an integer index to retrieve the appropriate translated string.

For example, Config.java:170-180 shows config phrases being used as labels in formatted output, and Greeting.java:30 retrieves getGreetingPhrase(0) for the application greeting.

> **Note:** getGreetingPhrase(int i) is called by Greeting.java:38 but is not yet stubbed in Language.java -- it needs to be added along with the other implementations.
