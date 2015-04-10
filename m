X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Friday" "10" "April" "2015" "15:58:33" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150410155833.66cd7223@redhat.com>" "13" "Re: [oss-security] CVE Request: MySQL Null Pointer Dereference" nil nil nil "4" "2015041013:58:33" "[oss-security] CVE Request: MySQL Null Pointer Dereference" (number mark "        thoger@redha Apr 10   13/513   " thread-indent "\"Re: [oss-security] CVE Request: MySQL Null Pointer Dereference\"\n") "<55278DF7.10701@internot.info>" ("<55278DF7.10701@internot.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6021 invoked by uid 550); 10 Apr 2015 13:58:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5991 invoked from network); 10 Apr 2015 13:58:52 -0000
Message-ID: <20150410155833.66cd7223@redhat.com>
In-Reply-To: <55278DF7.10701@internot.info>
References: <55278DF7.10701@internot.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 10 Apr 2015 15:58:33 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: MySQL Null Pointer Dereference
To: Joshua Rogers <oss@internot.info>

On Fri, 10 Apr 2015 18:46:47 +1000 Joshua Rogers wrote:

> Could I get a CVE-ID assigned for this bug?:
> https://bugs.mysql.com/bug.php?id=75372

I believe this kind of issues is not considered security / needing CVE
without further justification.  The problem here only occurs if
malloc(small_value) fails.  Considering how small the value is and that
it's not attacker controlled, it's fairly non-obvious if attacker has
any practical chance of triggering this bug.

-- 
Tomas Hoger / Red Hat Product Security
