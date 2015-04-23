X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["544" "Thursday" "23" "April" "2015" "15:08:43" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5538EEDB.50308@redhat.com>" "13" "[oss-security] open(2) with side effects" nil nil nil "4" "2015042313:08:43" "[oss-security] open(2) with side effects" (number mark "        fweimer@redh Apr 23   13/544   " thread-indent "\"[oss-security] open(2) with side effects\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20287 invoked by uid 550); 23 Apr 2015 13:08:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20266 invoked from network); 23 Apr 2015 13:08:57 -0000
Message-ID: <5538EEDB.50308@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 23 Apr 2015 15:08:43 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] open(2) with side effects
To: oss-security@lists.openwall.com

How common are file names on Linux which, when just opened and closed
(maybe with fstat or fgetattr inbetween), trigger side effects, such as
tape rewind?

Do we still have to guard against that?  Or is that a thing of the past?

At least before containers, the risk is greatly reduced because /dev is
a separate file system these days, so you can only use symbolic links,
and those are more straightforward to deal with (hard links need O_PATH
for a race- and side-effect-free link count check).

-- 
Florian Weimer / Red Hat Product Security
