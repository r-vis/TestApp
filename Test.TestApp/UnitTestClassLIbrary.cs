using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Test.TestApp
{
  [TestClass]
  public class UnitTestClassLIbrary
  {
    [TestMethod]
    public void TestMessage()
    {
      Assert.AreEqual("Hello!", new TestClassLibrary.MyClass().Message);
    }

#if !AZURE_PIPELINE_BUILD
    [TestMethod]
    public void TestWillAlwaysFail()
    {
      Assert.AreEqual("Hello, World!", new TestClassLibrary.MyClass().Message);
    }
#endif
  }
}
