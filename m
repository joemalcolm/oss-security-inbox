X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3024" "Wednesday" "11" "October" "2017" "20:00:23" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>" "74" "Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" "^Cc:" nil nil "10" "2017101202:00:23" "[oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" (number mark "        kseifried@re Oct 11   74/3024  " thread-indent "\"Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra\"\n") "<87h8v5b2rf.fsf@xps13.shealevy.com>" ("<87h8v5b2rf.fsf@xps13.shealevy.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11336 invoked by uid 550); 12 Oct 2017 02:00:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11318 invoked from network); 12 Oct 2017 02:00:35 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0DvyoGlGgoIrFf21c4swm8/q5T03RTBZAem/5cY6nxY=;
        b=lP2owmfd1bm8ZTBpmnuDXPLKP5Kb1Y/Jkgyd1gwITMTltgPiqBk7bPO3xU2nxWeS9W
         QehbpHB0sKMYbxhQ2tLyQqzXBbEtrsPA+eDXcGqBX46nbZHsyNMWPYPyGz2hlJYXzsoY
         SiPKsvKxCGR4JDFBuK4DfIi+qXFqS3NkWo8mLS9zUnt/K+7BgOlfiFpsu8fpwKkJ3COf
         Q2LFTftmq9QWDF174HplibXAEzU1u+nWVSwcTX7KoZ1DcQtuUD9cm9zrVQtCcyUncDgC
         cJzM7MJfN1Bw4CzWST9AQPq1ZTvUa0q7J6t110V0CJSbPTXSn96r1xjKaz+qAk/sTo9O
         IOHA==
X-Gm-Message-State: AMCzsaXkX4pu6Y3ThE4bdKh56ejMFW6Vq+3dLyxqrMNc/uRamWyvAY7f
	TXhRYD8+WVaxnwbe3MHbGsxQ1bJ446YnU7HpwvJjnw0M4go=
X-Google-Smtp-Source: AOwi7QASz3JvC2vnVKktqkFkUkxSGdLJ8pcDzdgQ5aDrXVQbLPGG8rDjz2RY5UX7Yc6T4VWUmk/3aKl9S9zGc0P50OI=
X-Received: by 10.202.191.196 with SMTP id p187mr475705oif.162.1507773623577;
 Wed, 11 Oct 2017 19:00:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87h8v5b2rf.fsf@xps13.shealevy.com>
References: <87h8v5b2rf.fsf@xps13.shealevy.com>
Message-ID: <CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113d673c3c4e70055b4fe7a8"
Cc: nix-devel@googlegroups.com, Graham Christensen <graham@grahamc.com>, 
	Franz Pletz <fpletz@fnordicwalking.de>, =?UTF-8?B?RG9tZW4gS2/FvmFy?= <domen@dev.si>, 
	Rob Vermaas <rob.vermaas@gmail.com>
Date: Wed, 11 Oct 2017 20:00:23 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU
 kernel of macOS High Sierra
To: oss-security <oss-security@lists.openwall.com>

--001a113d673c3c4e70055b4fe7a8
Content-Type: text/plain; charset="UTF-8"

So I normally wouldn't accept this posting (and no doubt Solar will be
annoyed because this isn't Open Source per se, and he's 100% right) but
this posting does provide a good teachable moment.

On Wed, Oct 11, 2017 at 6:58 PM, Shea Levy <shea@shealevy.com> wrote:

> Hello oss-security,
>
> We have found an issue in the XNU kernel of macOS High Sierra wherein an
> unprivileged user can terminate all running processes using the kill
> system call. In short, a completely unprivileged user can bring down the
> entire system with kill(-1, SIGKILL) (and, in a shell, kill SIGKILL -1),
> so long as there is at least one other process running owned by that
> user. In some cases we've seen it take a few tries in a loop to actually
> trigger the issue.
>

In general this isn't a huge issue based on normal Mac OS usage as it;s not
typically a shell server. But it's still "local user makes system die"
which is of interest.


> We have reported the issue to Apple, who do not see it as a security
> concern. On its own the ability to easily bring down a multi-user system
> is concerning, but the fact that we found this accidentally and that the
> behavior is exactly what you'd expect if there were no permissions check
> for the kill call at all leads us to believe that there is likely more
> that can be done to exploit this issue. Some reports include log
> messages showing services being killed prior to the system breaking,
> though this has been difficult to reproduce.
>
> We have not reserved a CVE for this issue as Apple is a CNA and does not
> see it as a security issue.
>

And here's my main teachable moment.

If a CVE Numbering Authority (CNA) does not grant a CVE to an issue
(whether it be due to "not a bug" or non responsiveness or whatever) there
is a simple process to deal with this. You go to the CNA's parent, a list
of CNA's is currently at:

https://cve.mitre.org/cve/cna.html

in general most current CNA's have MITRE as their parent (we're working on
a federated hierarchy but we're in the early stages), so using the form:

https://cveform.mitre.org/

to request a CVE would be your next step. For the Open Source Distributed
Weakness Filing (DWF) hierarchy each CNA and sub CNA is registered at:

https://github.com/distributedweaknessfiling/DWF-CNA-Registry/tree/master/CNA-Registry


so essentially you go to the parent and keep working your way up until
either you are satisfied, or you hit MITRE and they tell you to take a
hike, or give you a CVE.

Speaking of which if you are an Open Source project and want to be a CNA,
polease contact me and chances are I can set you up in a pretty quick
timeframe (faster than I assign CVEs because creating a CNA is a much
better ROI of my time than issuing a CVE). .

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d673c3c4e70055b4fe7a8--
