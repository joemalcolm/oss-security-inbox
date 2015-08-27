X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["484" "Thursday" "27" "August" "2015" "11:56:09" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55DEDEB9.5060000@redhat.com>" "11" "[oss-security] CVE-2015-5237: Integer overflow in protobuf serialization (currently minor)" nil nil nil "8" "2015082709:56:09" "[oss-security] CVE-2015-5237: Integer overflow in protobuf serialization (currently minor)" (number mark "        fweimer@redh Aug 27   11/484   " thread-indent "\"[oss-security] CVE-2015-5237: Integer overflow in protobuf serialization (currently minor)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13806 invoked by uid 550); 27 Aug 2015 09:56:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13774 invoked from network); 27 Aug 2015 09:56:23 -0000
Message-ID: <55DEDEB9.5060000@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Thu, 27 Aug 2015 11:56:09 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5237: Integer overflow in protobuf serialization (currently
 minor)
To: oss-security@lists.openwall.com

https://github.com/google/protobuf/issues/760

This is currently not intended to be addressed upstream, which is a bit
disappointing.  It's true that this issue does not have much exposure
right now, but in a couple of years, the message sizes involved will not
seem so gigantic anymore.  And as explained in the bug report, fixing
this will be difficult because it involves updating generated code; it
won't be a simple library update.

-- 
Florian Weimer / Red Hat Product Security
