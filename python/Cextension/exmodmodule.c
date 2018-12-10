#include<Python2.7/Python.h>
//https://www.youtube.com/watch?v=s6cvSkbWG3s

static PyObject *exmodError;

static PyObject* exmod_say_hello(PyObject* self, PyObject *args){
	const char* msg;
	int sts=0;
	if(!PyArg_ParseTuple(args, "s", &msg)){
		return NULL;
	}
	if(strcmp(msg, "this_is_an_error") == 0){
		PyErr_SetString(exmodError, "this is a test exception error after typing an expected invalid response");
		return NULL;
	}else{
		printf("this is c world\nYour message is: %s\n",msg);
		sts=21;
	}
	
	return Py_BuildValue("i", sts);
}

static PyObject* exmod_add(PyObject* self, PyObject *args){
	double a,b;
	double sts=0;
	if(!PyArg_ParseTuple(args, "dd", &a, &b)){
		return NULL;
	}

	sts= a + b;
	printf("This is c would\nAddition of %f + %f = %f",a,b,sts);
	return Py_BuildValue("d", sts);
}

static PyMethodDef exmod_methods[] = {
	//PythonName	c-function name 	argument presenation	description
	{"say_hello",	exmod_say_hello,	METH_VARARGS,			"say hello from c and pring message"},
	{"add",			exmod_add,			METH_VARARGS,			"add 2 nums in c"},
	{NULL, NULL, 0,NULL} //sentinel
};


PyMODINIT_FUNC initexmod(void){
	PyObject *m;
	m = Py_InitModule("exmod", exmod_methods);
	exmodError = PyErr_NewException("exmod.error", NULL, NULL);
	Py_INCREF(exmodError);
	PyModule_AddObject(m, "error", exmodError);
}
