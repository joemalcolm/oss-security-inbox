X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1350" "Monday" "19" "June" "2017" "12:46:20" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1497890780.6892.2.camel@gmail.com>" "31" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017061916:46:20" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        danielmicay@ Jun 19   31/1350  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7450 invoked by uid 550); 19 Jun 2017 16:46:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7423 invoked from network); 19 Jun 2017 16:46:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=i5SQxzBk2hj56nnSiH4IEHCAogrmqsrtupmQzkCIFyo=;
        b=g8ejTpiyBI34T1vDt5PEv0HZt966uMLcuCVbJH9dy5APACa97w0V6LzrnC36tUsLUS
         Huoss0eJnnE7WqTuhBivYuhh1Rc9vmKaLS4q5rXEts9sRe3cPFK1nUJ1DY92MPcmtU5P
         ygVR7VXUM2u2i0cZsY+XJ6f4CQ3fVtziV4nRF/W6N0c42nneATuXbpQAoJmmLeeJ6kaw
         j0G05dhHEa433gOCMJFySuM8QZq9qJJ5Vl+usus/KRXck2hHP9Oh5qgcbl2dh3VPPLqU
         NbXcr9Oo/XuYtxxN9BAw0KqZJnU99J2dP68P09s0dGPM2Pc7EJFb2pUd5isQGa6VI88Q
         68DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i5SQxzBk2hj56nnSiH4IEHCAogrmqsrtupmQzkCIFyo=;
        b=jM632LNqEQ1SCBPfymiek66xnaWPRjr8CNovXGNtOeJ3ICjYn03IsvMmqLP9Zj6FwF
         +9LpKjqrvQxr41TfXLA53gGtG1GnqAbfpEvuvw8dVs+ZOAPRMoRkySRUUH68RLNq4RnQ
         3f7LvaGDnWIp01uB+10T5yjg9t7WR9Cvf+TDVa63ol3Q6dSKEAAOg2fb85raW8MVzoKb
         8KBtjRdCnp9Ykd9Dno26ff7SjF84L1M6nh7QYT9BGQioMVzIPRbevk9XcgXdrGRwlPD0
         IanmAc/KRzGa5X7VspBm0yACxAgcVtxq9NssHjKrsFgTS3hSs6+rxZp8UOJRZ1M1/K4x
         JBzg==
X-Gm-Message-State: AKS2vOy94jVpQJkdPCC/L3lLvXUnVVpaQ586yfQ8You9dvZd7jHNev0e
	6oeFUqWgsESGFr6L63s=
X-Received: by 10.233.222.69 with SMTP id s66mr2209313qkf.30.1497890782514;
        Mon, 19 Jun 2017 09:46:22 -0700 (PDT)
Message-ID: <1497890780.6892.2.camel@gmail.com>
In-Reply-To: <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
References: <20170619152843.GC7769@localhost.localdomain>
	 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Mon, 19 Jun 2017 12:46:20 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Qualys Security Advisory
 <qsa@qualys.com>

On Mon, 2017-06-19 at 09:40 -0600, kseifried@redhat.com wrote:
> On 06/19/2017 09:28 AM, Qualys Security Advisory wrote:
> > 
> > Qualys Security Advisory
> > 
> > The Stack Clash
> 
> I just want to publicly thank Qualys for working with the Open Source
> community so we (Linux and *BSD) could all get this fixed properly.
> There was a lot of work from everyone involved and it all went pretty
> smoothly.

Fixing it properly would really also include fixing these:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=68065
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66479

and actually implementing -fstack-check as not just a no-op in Clang.

Windows has working stack probes, even in Windows XP and perhaps even
earlier. LLVM has working stack probes there (not sure if GCC deals with
it properly) yet doesn't make them available elsewhere.

Rust is 'memory safe' but has this same stack exhaustion issue. It
didn't used to have the issue, since it kept around the LLVM segmented
stack code generation after it dropped segmented stacks to check for
stack overflow in function preludes. That got dropped for a 1-3%
performance win from using stack probes instead... which was a good
idea, but without implementing stack probes... making it a terrible
idea. It was deferred to some later date. That was in July 2015, and 2
years later it's not done.
