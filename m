X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1595" "Thursday" "13" "August" "2015" "18:05:07" "+0100" "David Meikle" "dmeikle@apache.org" "<B7848C4E-BC38-4477-832E-B1138B83195A@apache.org>" "45" "[oss-security] [CVE-2015-3271] Apache Tika information disclosure vulnerability" nil nil nil "8" "2015081317:05:07" "[oss-security] [CVE-2015-3271] Apache Tika information disclosure vulnerability" (number mark "        dmeikle@apac Aug 13   45/1595  " thread-indent "\"[oss-security] [CVE-2015-3271] Apache Tika information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1904 invoked by uid 550); 13 Aug 2015 17:06:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31802 invoked from network); 13 Aug 2015 17:05:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:from:content-type:subject:date:to:message-id:mime-version;
        bh=ggGrj1yxK8cr/8YqVkBZ1efgLvb8fegXkd+nmgeATcU=;
        b=HFb/YiizFXvahzcHvE9I/ke61RCerWNDwC1weO/AS01eRwrvL9YsUddsW8TKgfCPdR
         dioqOvjumMUOBX0Jcwmn+MIR1GpEsh3UUoEtc+xg64JlOUEciI5zbbewsuG187hF5BrY
         6yM7w+Dw7lC2NRQfZ/cfPBVZv6yk/uBIjH8Gb+vPBrC1jqkMnzk4Qh3qg/qyj9AlXMYe
         8xSK2VkYbYESYuCezWGgW+MlJ41ytaWp0wa6KooOUXEYfaIZdWsifeUBAf19FpN8rNYI
         qklQOgXp3QM+aOaOnlIWjc6dSPSnj7DVcFiTdObixXaGIEh/EDMkrLJGx2htsnNGOg11
         k+nQ==
X-Received: by 10.180.90.65 with SMTP id bu1mr7298101wib.0.1439485510388;
        Thu, 13 Aug 2015 10:05:10 -0700 (PDT)
Content-Type: multipart/alternative; boundary="Apple-Mail=_5E879C4C-2651-481C-AB74-7136521BD217"
X-Priority: 1
Message-Id: <B7848C4E-BC38-4477-832E-B1138B83195A@apache.org>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
Date: Thu, 13 Aug 2015 18:05:07 +0100
From: David Meikle <dmeikle@apache.org>
Reply-To: oss-security@lists.openwall.com
Sender: David Meikle <loompa@gmail.com>
Subject: [oss-security] [CVE-2015-3271] Apache Tika information disclosure vulnerability
To: user@tika.apache.org,
 dev@tika.apache.org,
 security@apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com

--Apple-Mail=_5E879C4C-2651-481C-AB74-7136521BD217
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2015-3271: Apache Tika information disclosure vulnerability=20

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Tika 1.9

Description:

Apache Tika provides optional functionality to run itself as a web service =
to allow remote use. When used in this manner,=20
it's possible for a 3rd party to pass a 'fileUrl' header to the Apache Tika=
 Server (tika-server). This header lets a remote
client request that the server fetches content from the URL provided, inclu=
ding files from the server's local filesystem.
Depending on the file permissions set on the local filesystem, this could b=
e used to return sensitive content from=20
the server machine.

Note this vulnerability only exists if you are running the tika-server vers=
ion 1.9, and you allow un-trusted access to the tika-server
URL. Usage of Apache Tika as a standard library is not affected.

Mitigation:
Apache Tika 1.9 users should upgrade to Apache Tika 1.10

Example:
wget https://repo1.maven.org/maven2/org/apache/tika/tika-server/1.9/tika-se=
rver-1.9.jar <https://repo1.maven.org/maven2/org/apache/tika/tika-server/1.=
9/tika-server-1.9.jar> && java -jar tika-server-1.9.jar
curl -i -H "fileUrl:file:///etc/passwd" -H "Accept: text/plain" -X PUT http=
://localhost:9998/tika <http://localhost:9998/tika>

Credit:
This issue was discovered by Tim Allison from the Apache Tika Community.=

--Apple-Mail=_5E879C4C-2651-481C-AB74-7136521BD217--
