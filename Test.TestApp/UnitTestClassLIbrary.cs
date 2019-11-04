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
  }
}
