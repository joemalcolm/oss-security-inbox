X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["699" "Monday" "9" "November" "2015" "07:58:52" "+0100" "Florian Weimer" "fweimer@redhat.com" "<5640442C.1050501@redhat.com>" "17" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015110906:58:52" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        fweimer@redh Nov  9   17/699   " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23934 invoked by uid 550); 9 Nov 2015 06:59:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23911 invoked from network); 9 Nov 2015 06:59:07 -0000
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5640442C.1050501@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Mon, 9 Nov 2015 07:58:52 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com

On 11/09/2015 01:36 AM, Jason Shepherd wrote:
> Hello oss-esc,
> 
> It was found that a flaw in Apache commons-collections Java library allowed remote code execution when Deserialised with Java Object Serialization.

This is not a vulnerability in the library.  How can this feature allow
remote code execution if it does not involve any networking at all?

The root cause is the incorrect use of Java deserialization.  As long as
you do not fix that, something else on the classpath will serve the role
of Apache Commons Collections.

Disabling InvokerTransformer deserialization may be a prudent hardening
measure, but calling the existing behavior a vulnerability is a bit of a
stretch.

Florian
