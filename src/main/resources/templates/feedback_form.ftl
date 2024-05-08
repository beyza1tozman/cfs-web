<#-- @ftlvariable name="course" type="com.example.models.Course" -->
<#-- @ftlvariable name="feedback" type="com.example.models.Feedback" -->
<#import "_layout.ftl" as layout />
<@layout.header>
    <div>
        <h3>Give feedback</h3>
        <form action="${course.courseCode}" method="post">
            <p>Course Code: ${course.courseCode}</p>
            <p>Course Name: ${course.courseName}</p>
            <p>Course Date: ${feedback.courseDate}</p>
            <p>Course Topic: ${feedback.courseTopic}</p>
            <p>Feedback Start Date: ${feedback.feedbackStartDate}</p>
            <p>
                <input type="hidden" name="feedback_id" value=${feedback.id}>
            </p>
            <p>
                <label for="student_feedback">Enter your feedback</label>
                <textarea name="student_feedback" id="student_feedback" placeholder="no more than 500 words"></textarea>
            <p>
                <input type="submit">
            </p>
        </form>
    </div>
</@layout.header>
