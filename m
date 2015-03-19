X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Thursday" "19" "March" "2015" "12:38:23" "+0100" "Florian Weimer" "fweimer@redhat.com" "<550AB52F.6090405@redhat.com>" "12" "Re: [oss-security] CVE Request: Linux kernel execution in the early microcode loader." nil nil nil "3" "2015031911:38:23" "[oss-security] CVE Request: Linux kernel execution in the early microcode loader." (number mark "        fweimer@redh Mar 19   12/446   " thread-indent "\"Re: [oss-security] CVE Request: Linux kernel execution in the early microcode loader.\"\n") "<5509C27C.5010208@gmail.com>" ("<20150318122502.GA24063@chrystal.uk.oracle.com>" "<55097324.1070606@redhat.com>" "<5509C27C.5010208@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9341 invoked by uid 550); 19 Mar 2015 11:38:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9317 invoked from network); 19 Mar 2015 11:38:38 -0000
Message-ID: <550AB52F.6090405@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150318122502.GA24063@chrystal.uk.oracle.com> <55097324.1070606@redhat.com> <5509C27C.5010208@gmail.com>
In-Reply-To: <5509C27C.5010208@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 19 Mar 2015 12:38:23 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Linux kernel execution in the early
 microcode loader.
To: oss-security@lists.openwall.com

On 03/18/2015 07:22 PM, Daniel Micay wrote:

> Vanilla kernels don't have this separation even without
> vulnerabilities though, at without without using an LSM. Even with
> an LSM, I'm pretty sure there are ways around it unless you use
> seccomp too...

Sure, but some downstreams ship modified kernels would probably treat
this as a vulnerability (lack of enforcement of security controls etc.).

-- 
Florian Weimer / Red Hat Product Security
