X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["511" "Monday" "9" "November" "2015" "13:53:04" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20151109215303.GN1213@sentinelchicken.org>" "13" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015110921:53:04" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        tim-security Nov  9   13/511   " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<5640442C.1050501@redhat.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12231 invoked by uid 550); 9 Nov 2015 21:53:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12194 invoked from network); 9 Nov 2015 21:53:23 -0000
Message-ID: <20151109215303.GN1213@sentinelchicken.org>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5640442C.1050501@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 9 Nov 2015 13:53:04 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com


> This is not a vulnerability in the library.  How can this feature allow
> remote code execution if it does not involve any networking at all?
> 
> The root cause is the incorrect use of Java deserialization.  As long as
> you do not fix that, something else on the classpath will serve the role
> of Apache Commons Collections.

Can you elaborate on this last point?  Can you better describe the
root cause, as you see it, and what should have been done differently
by the systems using Apache Commons?

tim
