X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2486" "Monday" "3" "April" "2017" "13:55:17" "+0200" "=?UTF-8?B?SsO2cmc=?= Schaible" "joerg.schaible@gmx.de" "<obtd6v$pv3$1@blaine.gmane.org>" "77" "[oss-security] CVE Request - XStream: DoS when unmarshalling void" nil nil nil "4" "2017040311:55:17" "[oss-security] CVE Request - XStream: DoS when unmarshalling void" (number mark "U       joerg.schaib Apr  3   77/2486  " thread-indent "\"[oss-security] CVE Request - XStream: DoS when unmarshalling void\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15726 invoked by uid 550); 3 Apr 2017 13:05:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5721 invoked from network); 3 Apr 2017 11:55:47 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?B?SsO2cmc=?= Schaible <joerg.schaible@gmx.de>
Date: Mon, 03 Apr 2017 13:55:17 +0200
Message-ID: <obtd6v$pv3$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8Bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: KNode/4.14.10
Subject: [oss-security] CVE Request - XStream: DoS when unmarshalling void

Hello,

XStream is a Java library basically to marshal Java objects into XML and 
back.

Huawei engineers reported a reproducible crash of the Java VM (DoS) feeding 
XStream with a specially crafted XML (note, that Stream also supports JSON, 
that one can be used equally).

Issue Description
=================

The processed stream at unmarshalling type contains type information to 
recreate the formerly written objects. XStream creates therefore new 
instances based on these type information. The crash occurrs if this 
information advices XStream to create an instance of the primitive type 
'void'. This situation can only happen if an attacker was able to manipulate 
the incoming data, since such an instance does not exist.

Steps to Reproduce:
===================

The simplest way to demonstrate the problem is with this snippet:

XStream xstream = new XStream();
xstream.fromXML("<void/>");

If XStream is configured to read JSON, the equivalent line is:

xstream.fromXML("{'void':null}");

However, the problematic type information can be injected at any position in 
the provided stream, in XML just by adding a class attribute:

xstream.fromXML("<string class='void'>Hello, world!</string>");

Impact:
=======
The vulnerability may allow a remote attacker to cause a crash on the target 
system resulting in a denial of service only by manipulating the processed 
input stream.

Affected Versions:
==================
Currently all versions until and including version 1.4.9 are affected, but 
workarounds exist.

Workarounds:
============
XStream contains since version 1.4.7 a security framework to prevent an 
attack described in CVE-2013-7285. This framework can also be used to 
suppress the current vulnerability by setting:

xstream.denyTypes(void.class, Void.class);

Users of older XStream releases can register an own converter for the 'void' 
type, that also protects against this attack:

xstream.registerConverter(new Converter() {
  public boolean canConvert(Class type) {
    return Void.class == type || void.class == type;
  }
  public Object unmarshal(HierarchicalStreamReader reader, 
UnmarshallingContext context) {
    throw new ConversionException("Type void cannot have an instance");
  }
  public void marshal(Object source, HierarchicalStreamWriter writer, 
MarshallingContext context) {
    throw new ConversionException("Type void cannot have an instance");
  }
}, XStream.PRIORITY_VERY_HIGH);

Regards,
Jörg Schaible

Maintainer of XStream.

