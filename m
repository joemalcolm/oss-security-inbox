X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["815" "Thursday" "17" "December" "2015" "10:27:59" "+0100" "Claus Ibsen" "claus.ibsen@gmail.com" "<CAGB5yNn7OimVkJ_mArRWQXQ4aOOGko=uxV_Zhf7U79SONY=kGA@mail.gmail.com>" "27" "[oss-security] CVE-2015-5348 - Apache Camel medium disclosure vulnerability" nil nil nil "12" "2015121709:27:59" "[oss-security] CVE-2015-5348 - Apache Camel medium disclosure vulnerability" (number mark "U       claus.ibsen@ Dec 17   27/815   " thread-indent "\"[oss-security] CVE-2015-5348 - Apache Camel medium disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24473 invoked by uid 550); 17 Dec 2015 10:32:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22103 invoked from network); 17 Dec 2015 09:28:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=B9J/FU9PasV5zdGR73hjOGleazWS6d/e9R7uG3kJ5zM=;
        b=V3JTNgRMWOmOE+COwlZhemTlCcZyebM4PWfhHXkIyv2eO6WoMiR0tcFZJKyHcUVuJ5
         tV0ZAxbaI8y5EMEkvpu0HR061jTYxKMJ3UiZBnc/ON/CDqL6U/dUH6sNpAgiVDqNT1OR
         QR/A1N1Uo27QIOjl7xbHmdvh7DV3sQjc7c5bwRZTCmBZzMLWRfAuq5FbJ2xbYZIavid0
         S89V41zov9+AtVrLarOD0chG9y5plDcJSvTXcpNb2p0Vb2/NuVV9S+XUBxGLdvocmxjV
         KLYuJzHc6X720VB38Ht3IE91m79jdxQf0uNq0qJ1Gj4zbSa2VGJBJB7K5nz08jNG6VgW
         4ydQ==
X-Received: by 10.107.149.205 with SMTP id x196mr30593706iod.181.1450344499369;
 Thu, 17 Dec 2015 01:28:19 -0800 (PST)
MIME-Version: 1.0
From: Claus Ibsen <claus.ibsen@gmail.com>
Date: Thu, 17 Dec 2015 10:27:59 +0100
Message-ID: <CAGB5yNn7OimVkJ_mArRWQXQ4aOOGko=uxV_Zhf7U79SONY=kGA@mail.gmail.com>
To: dev <dev@camel.apache.org>, "users@camel.apache.org" <users@camel.apache.org>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	security <security@apache.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2015-5348 - Apache Camel medium disclosure vulnerability

Apache Camel's Jetty/Servlet usage is vulnerable to Java object
de-serialisation vulnerability

If using camel-jetty, or camel-servlet as a consumer in Camel routes,
then Camel will automatic de-serialize HTTP requests that uses the
content-header: application/x-java-serialized-object.

Please study this security vulnerability carefully!

CVE-2015-5348 - [1]

You can download the fixed Apache Camel 2.15.x and 2.16.x version from the
Apache mirrors [2] or from the Central Maven repository.


[1] http://camel.apache.org/security-advisories.data/CVE-2015-5348.txt.asc?version=1&modificationDate=1450340845000&api=v2
[2] http://camel.apache.org/download


On behalf of the Camel PMC,
Claus Ibsen

-- 
Claus Ibsen
-----------------
http://davsclaus.com @davsclaus
Camel in Action 2: https://www.manning.com/ibsen2
