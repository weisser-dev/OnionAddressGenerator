# OnionAddressGenerator

Because the generation of larger addresses with Shallot takes more time. I have written a small shell script which allows us to save all generated urls.
In other words, if I want a URL that starts with "whitecom", I can give one ^white as a parameter - so all created urls start with white. And as soon as I have one that starts with "whitecom" I stop creating urls. This gives me the possibility to generate several suitable domains and to choose the best one at the end, because all private_keys are stored in the /tmp folder.

Here a short example:

    ./addressgenerator.sh ^whi white
    ---------------------------------------------------------------
    Found matching domain after 65819 tries: whitedofszgmqnoq.onion
    ---------------------------------------------------------------
    -----BEGIN RSA PRIVATE KEY-----
    MIICXAIBAAKBgQDEl0aii2Uh2p1S+4LymgvTSE2FxgyBASu7ke3WydBR6PEXwfNh
    /9GMxpOms9TeuHRneHPntie0oBd01fh6Lfk/pSs+BViiqQqfkvIgK6cRYl1nSDaO
    hOzKKwL4/HEFCKD5sav89oGrkZSryV94ipkY7IkdIwwP5a4FugAX0G1VTwIDAwI1
    AoGAAXb0LSOzXXylIBxvfsfFBVeJO6f9O/OmU0nWJA6lPzsoCrHobonLnQZqxokj
    FgYkTJ2M0xjowrXqYsR8DwKoUJTFMCpKqt8rideB/vcbn1HtfqxV6f6CaHd0V8RQ
    gtmZOIm3u7Xzw7uGcbhk681L/I/8m4kZvT4ywZHtqS7LJB0CQQDjiZoX3dMJEIgk
    sAAhCTJYVWTNap2Z7UX2/Nfea6W0ylJj3NvLepoo9pKJoVhYXlpYSY0F5Ln6LYZG
    oDFInUNPAkEA3S6tIgyaMGro8hI8cLIZhbWMv3E3rX4sCWLTzbebWRUUlOKJWyYN
    0zvU6CIhiS30XOZRGmZTyI3KCZW8klJOAQJAFehTbkfRt+nDq6znpMZity1nF4io
    iQ1i6wEBj9vKNkmjoofpXGAehtoEkjJ+b28MQdyQ0gnTRV1i8K1i3n6VjQJBAL7m
    vXSvspX2ZvC00IgJLzJciAuAst7g1l5B0XXgQfLyHVyuepTVjNgwpnnzZkONMxAh
    2QgV5FBet6oiZWrGwh0CQFvPgz6zyR0QFtftvtSwemgDlK7qk+v1nGclZNf6fgJk
    I1hC7rXLmkDesIsIdqPZ5NQV8/HfpEIXWS1AXCrR4B4=
    -----END RSA PRIVATE KEY-----

I have now generated about 5-10 domains which all started with whi. Domains with the beginning of "whit3" and so on could have been there. When the domain finally started with "white" I stopped generating new ones and displayed the appropriate Private_Key.
As a result, I was able to notice a significant reduction in the time taken to generate new domains.

My small script for address generation can be found here.
It must be in the same folder as Shallot and you should create a tmp folder there.
