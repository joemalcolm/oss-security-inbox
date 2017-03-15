X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1027" "Wednesday" "15" "March" "2017" "14:47:45" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3bb11TipJamp2ahk8FSy3+gvSrPp0y7-Yx3XmxJbdwpA@mail.gmail.com>" "33" "Re: [oss-security] Dealing with CVEs that apply to unspecified package versions" "^Date:" nil nil "3" "2017031520:47:45" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "        kseifried@re Mar 15   33/1027  " thread-indent "\"Re: [oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") "<20170315200520.GA6090@jasmine>" ("<87wpbq5uqz.fsf@gnu.org>" "<20170315192747.GA4073@hunt>" "<20170315200520.GA6090@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10169 invoked by uid 550); 15 Mar 2017 20:47:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10150 invoked from network); 15 Mar 2017 20:47:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Fd/tlrEXPywNpOQSXzydzcgSY0uGQrp+0hP/ezaFb20=;
        b=NISZDdQ20b346sFE1kLG4sSqbeK2bqdxvm68DXSpmpgMzgC4le+xIPLGuZJ3L7jr6Z
         E6/w4exIek0+mkBapk7W2kayzWSmeDZkm/YW2eqw2nIQ8FoGK9ftOHRXgiJgQpX/Fvkg
         nJNP3gKx7G0UiRIG7LFU8HscYpO4o4m19IQNKYlDjWCwxZSidN4nQr59OTIuFQxRyOW5
         QHQr1nZGs142NvvfenJthKsjFYaWjKUE/Z88T6uJSZKjboWWawRn2updtsjRPXXihJZS
         pwKwexe8zEcbJfR3kkmGoDqwU8s5OhU1G44V30kqptpUO0kMAYtyrzbcc6hiOIeTIWhD
         aYMw==
X-Gm-Message-State: AFeK/H0oav7f1JOKt45xP866GZ18OXKxsOh8MzPS6k+P3S5gbzvvAPGOfjEDiY9DgcwRruDSsfhzJstxw7+UGHV5
X-Received: by 10.202.231.71 with SMTP id e68mr1673776oih.80.1489610865875;
 Wed, 15 Mar 2017 13:47:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170315200520.GA6090@jasmine>
References: <87wpbq5uqz.fsf@gnu.org> <20170315192747.GA4073@hunt> <20170315200520.GA6090@jasmine>
Message-ID: <CANO=Ty3bb11TipJamp2ahk8FSy3+gvSrPp0y7-Yx3XmxJbdwpA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1141ab0883b6c6054acb0ea2
Date: Wed, 15 Mar 2017 14:47:45 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Dealing with CVEs that apply to unspecified
 package versions
To: oss-security <oss-security@lists.openwall.com>

--001a1141ab0883b6c6054acb0ea2
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 2:05 PM, Leo Famulari <leo@famulari.name> wrote:

> On Wed, Mar 15, 2017 at 12:27:47PM -0700, Seth Arnold wrote:
> > I suspect the solution is for people who rely upon these scanning tools
> to
> > do the leg work themselves on the packages they care about. (i.e., the
> > packages that annoy them the most.)
>
> I think those of us who find these tools useful should work to improve
> the CVE database by adding the "fixed-in-version" information as it
> becomes available.
>

This is a major goal of

1) using the JSON format with richer data [a]
2) allowing other people (e.g. CVE Mentors) to edit the data

[a]
https://github.com/CVEProject/automation-working-group/blob/master/cve_json_schema/DRAFT-JSON-file-format-v4.md



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1141ab0883b6c6054acb0ea2--
