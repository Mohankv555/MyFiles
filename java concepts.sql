
Mohan  ooo
-------------------------------------------------

The web container maintains the life cycle of a servlet instance. Let's see the life cycle of the servlet:

Servlet class is loaded.
Servlet instance is created.
init method is invoked.
service method is invoked.
destroy method is invoked.
--------------------------------------------------


 action

 dispatch action

validatorform

validatoraction form

interceptor?
     Spring Interceptor are used to intercept client requests and process them. 
     Sometimes we want to intercept the HTTP Request and do some processing before handing it over to the controller handler methods. 
     That's where Spring MVC Interceptor come handy.

 web.xml lo servlet mapping tags anni nerchukovali

 struts config.xml lo action mapping form bean mapping use chese attributes and its purpose

 struts ki seperate tags untay anmata struts tag libraries nerchukovali enni types untay emem untay each type lo

 main ga struts flow adugutaru frst adhi ba chptey ivi vstay nxt -----------------------------------------------------------

struts nenu chepinavi cover chstey chalu u can answer most of the questions from struts

start cheyali inka nka 

front end naku kastam vuntadijsp aytey

jsp life cycle
      	  ----------------------
	Translation of JSP to Servlet code.
    Compilation of Servlet to bytecode.
    Loading Servlet class.
    Creating servlet instance.
	Initialization by calling jspInit() method
	Request Processing by calling _jspService() method
	Destroying by calling jspDestroy() method
============================================================================
jsp syntaxes, directives
-----------------
	1	
	<%@ page ... %>
	
	Defines page-dependent attributes, such as scripting language, error page, and buffering requirements.
	
	2	
	<%@ include ... %>
	
	Includes a file during the translation phase.
	
	3	
	<%@ taglib ... %>
	
	Declares a tag library, containing custom actions, used in the page
	
	
	1	
	jsp:include
	
	Includes a file at the time the page is requested.
	
	2	
	jsp:useBean
	
	Finds or instantiates a JavaBean.
	
	3	
	jsp:setProperty
	
	Sets the property of a JavaBean.
	
	4	
	jsp:getProperty
	
	Inserts the property of a JavaBean into the output.
	
	5	
	jsp:forward
	
	Forwards the requester to a new page.
	
	6	
	jsp:plugin
	
	Generates browser-specific code that makes an OBJECT or EMBED tag for the Java plugin.
	
	7	
	jsp:element
	
	Defines XML elements dynamically.
	
	8	
	jsp:attribute
	
	Defines dynamically-defined XML element's attribute.
	
	9	
	jsp:body
	
	Defines dynamically-defined XML element's body.
	
	10	
	jsp:text

Used to write template text in JSP pages and documents.
============================================================================



actions
==================================================================================
implicit objects
-----------------
 the Implicit Objects in JSP. These Objects are the Java objects that the JSP Container makes available to the developers 
 in each page and the developer 
 can call them directly without being explicitly declared. JSP Implicit Objects are also called pre-defined variables.

 1	
request

This is the HttpServletRequest object associated with the request.

2	
response

This is the HttpServletResponse object associated with the response to the client.

3	
out

This is the PrintWriter object used to send output to the client.

4	
session

This is the HttpSession object associated with the request.

5	
application

This is the ServletContext object associated with the application context.

6	
config

This is the ServletConfig object associated with the page.

7	
pageContext

This encapsulates use of server-specific features like higher performance JspWriters.

8	
page

This is simply a synonym for this, and is used to call the methods defined by the translated servlet class.

9	
Exception

The Exception object allows the exception data to be accessed by designated JSP.
================================================================================== 

include directive ki include action ki difference

anthey ivi vstey jsp u can max answer[14:07] ----------------------------

java lo em adugutharu[14:07] java lo max collections

collections lo anni differences baga nerchuko[14:08] ha thread avi adigara[14:08] konitlo adugutharu

how many ways to create a thread

which one is the better way

dead lock mean

thread life cycle
inter thread communication by wait,no

methods to interupt thread processing - yield,join,sleep
tify,notifyall

wait nd sleep differences

ivi masthu ekkuva threads lo[14:11] -----------------------------------------------------------

ikem aina ha exception handling

exception enti

error enti

checked exceptions enti

unchecked exceptions enti

how to handle exceptions

try catch finally blocks order chusko important questions and confusing questions

exception propagation

throw throws difference[14:14] ------------------------------------super[14:14] interface enti

abstract class enti

concrete class enti

static block enti

object class methods

string,string buffer,string builder differences

singleton class enti

how to create a singleton class[14:17] -----------------------------------------

btech subject questions adigara emaina[14:17] antha ledu[14:18] ok[14:18] hm

oops chusko nrml ga

abstraction

encapsulation

inheritance

polymorphism

brief ga define chstey chalu[14:19] ---------------------------

ha[14:19] constructors kuda chusko

this super keyword

types of constructors

default constructor ki no parameterized constructor ki difference[14:20] ------------------------------------

chala vunnai ga[14:21] ha okasari prepare ayyi untey nekey easy anipisthadi anni ala revise chesi pakana pettochu[14:22] ha avnu[14:22] servlets kuda nrml life cycle chusko

servletconfig servlet context difference chusko

jvm architecture chudu

class loaders chudu

jvm runtime areas chusko brief ga chalu[14:25] ---------------------------------------------

ha

 singleton class create cheymani



===============================================
Volatile Keyword?
  Volatile keyword is used to modify the value of a variable by different threads. It is also used to make classes thread safe. 
  It means that multiple threads can use a method and instance of the classes at the same time without any problem. 

how to synchronize array list?
  There are two way to create Synchronized Arraylist.
    1. Collections.synchronizedList() method.
       synchronized(list) 
        { 
            // must be in synchronized block 
            Iterator it = list.iterator(); 
  
            while (it.hasNext()) 
                System.out.println(it.next()); 
        } 
    2. Using CopyOnWriteArrayList.

--------------------------------------------------------------
session and cookie difference?
  Cookies and Sessions are used to store information. Cookies are only stored on the client-side machine, while sessions get stored on the client as well as a server.

Session

A session creates a file in a temporary directory on the server where registered session variables and their values are stored. This data will be available to all pages on the site during that visit.

A session ends when the user closes the browser or after leaving the site, the server will terminate the session after a predetermined period of time, commonly 30 minutes duration.

Cookies

Cookies are text files stored on the client computer and they are kept of use tracking purpose. Server script sends a set of cookies to the browser. For example name, age, or identification number etc. The browser stores this information on a local machine for future use.

When next time browser sends any request to web server then it sends those cookies information to the server and server uses that information to identify the user

-----------------------------------------------------------------

sleep and wait difference?
  sleep() is a method which is used to pause the process for few seconds or the time we want to. But in case of wait() method, thread goes in waiting state and it won’t come back automatically until we call the notify() or notifyAll().

--------------------------------------------------------------------------  
jsp lo exception handling ela chestham?
   By errorPage and isErrorPage attributes of page directive. eg: <%@ page errorPage="error.jsp" %> 
                                                                  <%@ page isErrorPage="true" %> 
   By <error-page> element in web.xml file 
      <web-app>    
        <error-page>  
          <exception-type>java.lang.Exception</exception-type>  
          <location>/error.jsp</location>  
        </error-page>    
     </web-app>  


---------------------------------------------   
jsp actions lo use bean dheniki use chestam ela use chestham?
   to set, get property 

classLoader, types of classLoader?
  Java ClassLoader is an abstract class. It belongs to a java.lang package. It loads classes from different resources. Java ClassLoader is used to load the classes at run time
  Types:
    Bootstrap Class Loader
    Extensions Class Loader
    System Class Loader


-------------------------------------------------- 

servlet lo dopost lo doget use cheyochaaa?
  Y
-----------------------------------------------  
try catch finally lo finally execute avvadhu antey em cheyali?
  System.exit(0);
------------------------------------  
out of memory error yepudu vstadi

-------------------------------------- 
marker interface antey enti examples?
  A marker interface is an interface that has no methods or constants inside it. It provides run-time type information about objects, so the compiler and JVM have additional information about the object. A marker interface is also called a tagging interface.
  eg: Cloneable interface, Serializable interface, Remote interface

------------------------------------------   
start ki run ki difference?
  start()	                                          run()
Creates a new thread and the run()                  method is executed on the newly created thread.	
No new thread is created and the run()              method is executed on the calling thread itself.
Can’t be invoked more than one time otherwise       Multiple invocation is possible
throws java.lang.IllegalStateException	
Defined in java.lang.Thread class.	                Defined in java.lang.Runnable interface and must be overriden in the implementing class.


------------------------------------------ 
runtime polymorphism/method overriding lo parent class data memebers modify cheyochaaa?
 ama
parent and child class serialization?
   JVM checks if the parent class implements Serializable and if so, it considers child class also as serializable. Hence, Serialization is a inheritable concept which comes from parent to child. If parent class is not serializable then also child class can be serialized

------------------------------------------------
Requirement Received WI

Obtain Ho Requirement WI
Requirement Follow up WI


==========================================
serialization (converting object to byteStream)
deserialization (converting byteStream to object )?
   Serialization in Java is a mechanism of writing the state of an object into a byte-stream. It is mainly used in Hibernate, RMI, JPA, EJB and JMS technologies.

   The reverse operation of serialization is called deserialization where byte-stream is converted into an object. The serialization and deserialization process is platform-independent, it means you can serialize an object in a platform and deserialize in different platform.

   For serializing the object, we call the writeObject() method ObjectOutputStream, and for deserialization we call the readObject() method of ObjectInputStream class.
=======================================================   

Thead, types of Thread, Synchronization?
   A single thread is basically a lightweight and the smallest unit of processing. Java uses threads by using a "Thread Class".

   There are various stages of life cycle of thread :
    New
    Runnable
    Running
    Waiting
    Dead

    New: In this phase, the thread is created using class "Thread class".It remains in this state till the program starts the thread. It is also known as born thread.
    Runnable: In this page, the instance of the thread is invoked with a start method. The thread control is given to scheduler to finish the execution. It depends on the scheduler, whether to run the thread.
    Running: When the thread starts executing, then the state is changed to "running" state. The scheduler selects one thread from the thread pool, and it starts executing in the application.
    Waiting: This is the state when a thread has to wait. As there multiple threads are running in the application, there is a need for synchronization between threads. Hence, one thread has to wait, till the other thread gets executed. Therefore, this state is referred as waiting state.
    Dead: This is the state when the thread is terminated. The thread is in running state and as soon as it completed processing it is in "dead state".

    There are two types of Threads in java.

     1) User Thread

     2) Daemon Thread

    1) User Thread :
       User threads are threads which are created by the application or user. They are high priority threads. JVM (Java Virtual Machine) will not exit until all user threads finish their execution. JVM wait for these threads to finish their task. These threads are foreground threads.

    2)Daemon Thread :
       Daemon threads are threads which are mostly created by the JVM. These threads always run in background. These threads are used to perform some background tasks like garbage collection and house-keeping tasks. These threads are less priority threads. JVM will not wait for these threads to finish their execution. JVM will exit as soon as all user threads finish their execution. JVM doesn’t wait for daemon threads to finish their task.



=============================================
Iterator	ListIterator
Can traverse elements present in Collection only in the forward direction.	Can traverse elements present in Collection both in forward and backward directions.
Helps to traverse Map, List and Set.	Can only traverse List and not the other two.
Indexes cannot be obtained by using Iterator.	It has methods like nextIndex() and previousIndex() to obtain indexes of elements at any time while traversing List.
Cannot modify or replace elements present in Collection	We can modify or replace elements with the help of set(E e)
Cannot add elements and it throws ConcurrentModificationException.	Can easily add elements to a collection at any time.
Certain methods of Iterator are next(), remove() and hasNext().	Certain methods of ListIterator are next(), previous(), hasNext(), hasPrevious(), add(E e).


==============================================

 APSReqtHORule 

 SELECT CASE WHEN COUNT(ORD) > 0 THEN 'Y' ELSE 'N' END AS RESULT FROM (SELECT CASE WHEN ORDER_BY = '0' 
 	THEN COLL_METH_CD ELSE ORDER_BY END AS ORD  FROM CASE_REQT CR WHERE CASE_REQT_ID IN (SELECT CASE_REQT_ID 
 		FROM CASE_REQT_ASSOC WHERE CASE_ID = __fb_caseId__AND IS_DELETED_IND = 'N') AND CR.REQT_ID IN (3000001,3000242) 
 	AND IS_DELETED_IND = 'N' and CR.REQT_STAT_CD='Required') WHERE ORD = 'H'


 SELECT APP_CASE.CASE_STAT_CD, APP_CASE.CASE_BASE_FACE_AMT, APP_CASE.APP_STATUS, 
 APP_CASE.CASE_GRP_NUM, APP_CASE.CASE_TYP_CD FROM APP_CASE WHERE APP_CASE.CASE_ID =__fb_caseId__

 KT on already existing rule confiuration

 "SELECT CASE WHEN EXISTS(SELECT 'Y' from  JH_CASE_CMPNY where LOWER(SALES_SOURCE) 
 NOT IN('jh insurance sales center','jh consumer sales','tranzact sales center','tranzact consumer sales','tz insurance solutions, llc') 
 AND CASE_ID = __fb_caseId__  AND IS_DELETED_IND='N')THEN 'Y' ELSE 'N' END FROM DUAL

 "

 extends(Thread  -> method "start"), implements(Runnable)


