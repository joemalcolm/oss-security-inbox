X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["690" "Tuesday" "5" "May" "2015" "00:55:52" "+0000" "Joe Malcolm" "jmalcolm@uraeus.com" "<21832.5400.384701.547034@neoshoggoth.uraeus.com>" "16" "Re: [oss-security] On sanctioned MITMs" nil "oss-security@lists.openwall.com" "oss-security@lists.openwall.com" "5" "2015050500:55:52" "[oss-security] On sanctioned MITMs" (number mark "U       ->oss-securi May  5   16/690   " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<20150502222546.GA23148@zoho.com>" ("<20150501191522.GA18039@zoho.com>" "<5543DDB5.7030900@redhat.com>" "<20150501233935.GB18039@zoho.com>" "<E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>" "<20150502222546.GA23148@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22455 invoked by uid 550); 5 May 2015 04:51:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15654 invoked from network); 5 May 2015 00:56:05 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Message-ID: <21832.5400.384701.547034@neoshoggoth.uraeus.com>
In-Reply-To: <20150502222546.GA23148@zoho.com>
References: <20150501191522.GA18039@zoho.com>
	<5543DDB5.7030900@redhat.com>
	<20150501233935.GB18039@zoho.com>
	<E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>
	<20150502222546.GA23148@zoho.com>
X-Mailer: VM 8.2.0b under 24.4.1 (amd64-portbld-freebsd10.1)
Date: Tue, 5 May 2015 00:55:52 +0000
From: Joe Malcolm <jmalcolm@uraeus.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

mancha writes:
>I agree achieving end-to-end (E2E) security with interposition is an
>interesting security research area. In fact, it would be great if as a
>result of this thread more members of the infosec and oss communities
>were motivated to tackle that. 

I've been thinking for a while that in the non-HTTPS world, it would
be useful to have some kind of content verification without
encryption, through hashes in URLs or the like. But the logical
conclusion from this thread is that it's also useful in the encrypted
context as well, as not all endpoints may be equally trusted.

Having said that, what you do if the content you get back isn't as
expected isn't totally clear.

Joe
