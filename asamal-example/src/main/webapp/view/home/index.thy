<!DOCTYPE html SYSTEM "http://www.thymeleaf.org/dtd/xhtml1-strict-thymeleaf-3.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
        >
    <head>
        <title>Good Thymes Virtual Grocery</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    </head>
    <body>


        <h1>Welcome to home!</h1>

        <h2>You have successfully created your Asamal Bootstrap</h2>

        <div id="tweetList">
            <ul th:each="tweet : ${tweets}">
                <li>
                    <span th:text="${tweet.msg}">Example tweet message</span>
                    on <span th:text="${tweet.date}">2012-02-02</span>
                </li>
            </ul>
        </div>

        <script type="text/javascript">
            function reloadTweets() {
                <span th:utext="${a.reRender('home', 'reload', '\'\'', '\'tweetList\'')}" th:remove="tag" />
            }

            $(document).ready(function () {
                setInterval(reloadTweets, 2000);
            });
        </script>

        <form action="/hehe" th:attr="action=${a.formAction('home', 'addTweet')}" method="post" id="tweetForm">
            <label>Tweet Text</label>
            <textarea rows="10" cols="30" name="tweet.msg" th:text="${tweet} ? ${tweet.msg} : ''">Dupa blada</textarea>
            <input type="submit" value="Add"/>
        </form>
    </body>
</html>
