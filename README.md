### QA tech test

Provided in this directory is a simple web application backend.  Instructions on how to install and run the app are given below.

Your task is to provide a simple functional API test suite and automation testing framework for this application.  You may use any tools that you like, subject to the following constraints:

* Submit your completed solution in the form of a Github repo or zipped directory (_with a git repo inside_).  It is important to include the .git directory in your solution so that we can see your history of commits.
* Commit early and often rather than in a single large commit;  trial and error is acceptable and even encouraged.
* Your solution should contain instructions sufficient to allow a technical user to run and replicate your results.  Do not make any assumptions about the user's specific language or tool knowledge;  for instance, do not assume that they know Java if you use a Java-based toolset.  

Note that these instructions are deliberately open-ended, as a significant component of this test is determining how you make decisions when given latitude. That is not the same as requiring that you produce more work to impress;  knowing what _not_ to do is often as important as knowing what to do.

Notes and suggestions:
* Solutions will be judged favorably if they demonstrate an ability to embed your tests in a framework suitable for a modern CICD pipeline.  For instance, providing a Dockerfile with a suitable return code that could be executed in a pipeline is a benefit.
* _No knowledge of Python should be required to complete this task_, beyond the ability to follow instructions and start the sample app running.  If you are unable to get the sample application running, you may alternatively choose a publicly available API to complete the task against.  The API you choose must be reachable from the public internet and it must not be against their T&Cs to use it in this way. 

#### Installation and running the sample app

It is recommended to work in a [virtual environment; `virtualenv'+`virtualenvwrapper` is a good combination](https://virtualenvwrapper.readthedocs.io/en/latest/).  This python Flask server requires (at the root directory of this repo):

    pip3 install -r requirements.txt
    python db_create.py
    python app.py

This will create a test database at /tmp/test.db and run a Flask server.  Navigate to `localhost:5000/v1/ui` to interact with the server and perform CRUD operations on a simple product database.
