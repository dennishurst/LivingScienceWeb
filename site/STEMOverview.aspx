<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Collections.Generic.Dictionary<string, Testimonial> aTestimonials = (System.Collections.Generic.Dictionary<string, Testimonial>)Session["Testimonials"];
        litTestimonials.Text = Utility.GetTestimonials(ref aTestimonials);
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>STEM Overview</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="main">
    <div class="gradient1">
        <!--content-->
        <div class="container">
            <div class="row">
                <article class="span8 thumb-pad6">
                        <h2>Stem Classes</h2>
                        
                        <h2>STEM 4th - 8th</h2>

<p>Each section covers Science, Technology, Engineering, and Mathematics for that grade level. For more information, see the STEM brochure.</p>

<a name="science"><h3>Science</h3></a>

<p>&nbsp;</p>
<p><strong>6th</strong></p>

<p>Intro Science</p>
<p>This class focuses on basic science skills and procedures while meeting the necessary standards. Typically for 6th grade but great for any age middle schooler who has little exposure to hands-on science. Custom curriculum (No textbook)</p>

<p>&nbsp;</p>
<p><strong>7th</strong>
<p>Life Science</p>
<p> strong course covering material from cell structure through kingdoms & phyla. Excellent pre-high school Biology course. All material is taught from a Creation viewpoint. While typically for 7th grades, this class is strongly recommended before advancing to high school biology. Custom Curriculum (no textbook)</p>

<p>&nbsp;</p>
<p><strong>8th</strong></p>
<p>Environmental & Earth Studies</p>
<p>Designed to develop critical thinking in science through the study of Earth and Physical Science topics that affect our lives (Typically for 8th graders) Custom curriculum (no textbook)</p>

<p>&nbsp;</p>
<p><strong>9th</strong></p>
<p>Physical Science</p>
<p>Some Physical Science material is taught in Earth Science and is completed in this class. The
highpoint is when the students present their Rube Goldberg contraptions showing the different
types or energy and machines. There is a strong chemical component in this class to prepare
students for Chemistry in the future. </p>

<p>&nbsp;</p>
<p><strong>10th</strong></p>
<p>Biology</p>
<p>Biology is a thorough course in the life sciences. Study will include all the major facets of living organisms including cell structure and function; a survey of the major kingdoms of organisms; selected topics in human anatomy; physiology, genetics; and an introduction to major ecological and creation features. All classes are taught from the creation viewpoint</p>

<p>&nbsp;</p>
<p><strong>11th</strong></p>
<p>Anatomy</p>
<p>Taught by a veterinary doctor, this course focuses on the anatomy and physiology of “The Cat.” Two or three member teams each have a cat that they work on during the course of the year. This course is heavy on information and lab work. An excellent pre-college course. Mammalian Anatomy: “The Cat”</p>

<p>&nbsp;</p>
<p>Chemistry</p>
<p>Chemistry is a college preparation course with focus on the concepts and practices of modern chemistry. The course includes general problem-solving techniques; physical concepts (phases of matter, etc.); chemical formulae and equations; atomic structure with an introduction to quantum mechanics; solutions (acids, bases, salts). Included will be exposure to chemistry via computer and micro-scale labs in addition to macro-scale labs.</p>

<p>&nbsp;</p>
<p><strong>12th</strong></p>
<p>Physics</p>
<p>An introduction to the ideas of physics – from classical physics to modern physics. The principles of physics are illustrated by everyday experience and practical devices. The student is shown how many kinds of technology work – from the camera to the car. It shows students the harmony between scientific knowledge and Christian belief.</p>

<p>Marine Biology</p>
<p>Prerequisite: LS Biology & Chemistry - This course will be a senior seminar discussion / teaching class.</p>


<a name="math"><h3>Math</h3></a> 

<p><strong>6th</strong> </p>
<p>Intro Math</p>
<p>This is the beginning of a two-course middle school series intended to bridge the gap from elementary mathematics to Algebra 1. The program is designed to motivate your students, enable them to see the usefulness of mathematics in the world around them, enhance their fluency in the language of mathematics and prepare them for success in algebra and geometry. Mathematics Course 1 Text & Workbook, Prentice Hall</p>

<p>&nbsp;</p>
<p><strong>7th</strong></p>
<p>Intermediate Math</p>
<p>This is the second part of a two course middle school series intended to bridge the gap from elementary mathematics to Algebra 1. The program is designed to motivate your students, enable them to see the usefulness of mathematics in the world around them, enhance their fluency in the language of mathematics, and prepare them for success in Algebra and Geometry. Mathematics Course 2, Prentice Hall</p>

<p>&nbsp;</p>
<p><strong>8th</strong></p>
<p>Algebra 1 - 1st year</p>
<p>Part one of a two year journey through Algebra, the course begins with a review of the real numbers and the coordinate plane. Next, the students will investigate equations, inequalities, and proportions in the preparation for a detailed study of graphs and functions. The course will employ concrete examples for the test as well as hands-on exercises with manipulatives to help bridge the gap to key algebraic concepts. This will prepare the student well for the second year of deeper study. Algebra I, Prentice Hall</p>

<p>&nbsp;</p>
<p><strong>9th & 10th</strong></p>
<p>Algebra 1, year 2</p>

<p>This course begins with a review of the real number system, operations with and factoring of
polynomials, solving first-degree equations and graphing linear functions. It continues with a
thorough development of systems of linear equations and inequalities, quadratic functions, rational
and irrational numbers, and exponents.</p>

<p>Algebra 1, Honors</p>
<p>This course begins with a review and continues with a thorough development of systems of linear
equations and inequalities, quadratic functions, rational and irrational numbers, and exponents.
Covers Algebra 1 – parts 1 and 2 in one year.</p>

<p>&nbsp;</p>
<p>Geometry (9th & 10th)</p>
<p>This course focuses on important geometric facts, proofs using deductive reasoning, the
integration of algebra and geometry; and applications of geometry. During the year, the student will learn the properties of parallel lines, circles, and triangle, parallelograms, and other polygons.  Throughout the course the student will use skills learned in algebra.</p>

<p>&nbsp;</p>
<p><strong>10th</strong></p>
<p>Algebra 2</p>
<p>This class is a continuation of Algebra I. Students will learn to relate and apply algebraic concepts to geometry, statistics, data analysis, and probability. They will connect math to other topics they are studying, like biology, geography, art, and history, through problems rich in algebraic content.</p>

<p>&nbsp;</p>
<p><strong>11th</strong></p>
<p>Trigonometry</p>
<p>This course of study is for students who have completed Algebra II. Previous experience with Trigonometry is helpful, but not a prerequisite. We will work on many concepts that are included on the SAT and ACT exams, as well as college placement exams. Up-to-date data is used for applications to show students when they will use math in their lives. They will examine data such as population growth. They plot points, look for patterns and trends in graphs, and write linear, quadratic, polynomial, exponential, logarithmic, and trigonometric equations to reflect the data.</p>


<a name="technology"><h3>Technology</h3></a> 

<p>Middle School Elective</p>

<p><strong>Robotics Club (ages 9-14)</strong>
<p>This club competes in the First Lego® League. Students learn how to design and program a robot to perform specific tasks. They also prepare a technical presentation and a group project as part of the competition.</p>

<p>&nbsp;</p>
<p><strong>9th Grade</strong></p>
<p>HS Technology</p>
<p>This course gives students a thorough understanding of how computers work individually and collectively within a network. Students will explore emerging computing technology and be introduced to a variety of computer applications. Students will gain an in-depth knowledge of Microsoft Office, including MS Access.</p>



<a name="engineering"><h3>Engineering</h3></a>

<p>HS Engineering</p>
<p>This course is an introduction to civil, electrical, mechanical, environmental, engineering, with
hands-on components.</p>



                        
                 </article>
             
             <article class="span4 pull-right testim-box">
                <asp:Literal ID="litTestimonials" runat="server"></asp:Literal>
            </article>
         </div>
    </div>
    </div>
</div>



</asp:Content>

