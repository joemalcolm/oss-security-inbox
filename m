X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2146" "Thursday" "16" "March" "2017" "18:32:17" "+0300" "Jerome Athias" "athiasjerome@gmail.com" "<CAA=AuEezYNSg-yia-8m=sp+BT+7JdFJGTdYHnYAXLaXqZxBuyA@mail.gmail.com>" "66" "Re: [oss-security] Dealing with CVEs that apply to unspecified package versions" "^Date:" nil nil "3" "2017031615:32:17" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "U       athiasjerome Mar 16   66/2146  " thread-indent "\"Re: [oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") "<CAA=AuEeu87z+zx=xf+yy6+4et6jWLF+8v+_rktO-uM_bNtgOMA@mail.gmail.com>" ("<87wpbq5uqz.fsf@gnu.org>" "<20170315192747.GA4073@hunt>" "<20170315200520.GA6090@jasmine>" "<CANO=Ty3bb11TipJamp2ahk8FSy3+gvSrPp0y7-Yx3XmxJbdwpA@mail.gmail.com>" "<CAA=AuEeu87z+zx=xf+yy6+4et6jWLF+8v+_rktO-uM_bNtgOMA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11607 invoked by uid 550); 16 Mar 2017 15:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7425 invoked from network); 16 Mar 2017 15:32:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=OkiEWQpdXaJjGtr0xsIjJ3T+6fVTmkpz1c6dpTeFUD8=;
        b=lW9Xz4cPepZiTm4Gw7tihmJx77MKth+kvD/clQoJHe2GcGI+JifWLjJr5WjjLZadVL
         Su68QIPMBi71gdjyg46SU/2f7XOS99TExaTx/44BpHzXBw9XK5PNzD/yNYYN7xyfVp3Q
         Cd1GTArVFndC++1/0KwXBqe+tlQOJ1VwzeHE2VWvL3xpvLrpNfOQz0KNZbnT+XiGb/49
         EkpKio0dWn+0Q8rJIJ3XKpW3aaqhM9zAl0PCCVUP7IhZl50vVPhG/putLmson4zAodu/
         ooUxxQ+ER7a4EO+7B7Bx/AgCrj9smlmm1fgwDZvl+egUcTBezyShGocFahYJ0F9zajb0
         B1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=OkiEWQpdXaJjGtr0xsIjJ3T+6fVTmkpz1c6dpTeFUD8=;
        b=JMs2a0006a+H2Uz5vum09XTX6VSxqYWLApRlJuLzHcOC+4qk/4DSxNhT0dlQ2b8f6M
         I7U1G2T/cvbj1ULs9Zbmr5ek837pbnGBYrrYDDeoh57SSgCx+TAGBCQ40FYZDYZ00Rnr
         kRbQbyjBoeVgSyOLz/kgap6CLmOh7xzIWGE2Gp7u000tms7JzUalGrTyXPOSs1Wth3I+
         tM1IxaowMd+7p//5w9NPzV1ra6+SHNkmquHMS7UUSnnZ4ve2RSBnWyzKt2SIJMEbYCfW
         pPF10XrAUniA5sP9YoY5skwKaP65zac3WuvvJ2HqoVQQoEXicbP+cISM1lq+kqiLvFES
         LQEQ==
X-Gm-Message-State: AFeK/H2BZBuKQzPLkZEfdz+z8j8zcXY4gutTqC4Z4t2eegLzk+8E/ngbSLM7OnZuhXf/IoV+ndBKc7OwQXByCg==
X-Received: by 10.31.142.208 with SMTP id q199mr3104358vkd.93.1489678338196;
 Thu, 16 Mar 2017 08:32:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAA=AuEeu87z+zx=xf+yy6+4et6jWLF+8v+_rktO-uM_bNtgOMA@mail.gmail.com>
References: <87wpbq5uqz.fsf@gnu.org> <20170315192747.GA4073@hunt>
 <20170315200520.GA6090@jasmine> <CANO=Ty3bb11TipJamp2ahk8FSy3+gvSrPp0y7-Yx3XmxJbdwpA@mail.gmail.com>
 <CAA=AuEeu87z+zx=xf+yy6+4et6jWLF+8v+_rktO-uM_bNtgOMA@mail.gmail.com>
Message-ID: <CAA=AuEezYNSg-yia-8m=sp+BT+7JdFJGTdYHnYAXLaXqZxBuyA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114398182d8b94054adac449
Date: Thu, 16 Mar 2017 18:32:17 +0300
From: Jerome Athias <athiasjerome@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Dealing with CVEs that apply to unspecified
 package versions
To: oss-security@lists.openwall.com

--001a114398182d8b94054adac449
Content-Type: text/plain; charset=UTF-8

Note for later (for going further into automation) for potential candidate
for schema reuse
https://github.com/sarif-standard

On Thu, Mar 16, 2017 at 12:29 PM, Jerome Athias <athiasjerome@gmail.com>
wrote:

> Yes the CVE form could help. (from my experience, first versions of a CVE
> sometimes do not include the exact CPE versions, the CPE are (or should be
> used as) at that time a pattern (e.g. "starts with") (still helpful) and
> are then sometimes (and we should understand/recognize the time/effort
> needed) revised/detailed over time
> OVAL could help to circumvent that issue (e.g. patterns/regex, hashes,
> etc.)
>
> imho, the root cause (or main issue) is:
> CVRF (or OASIS CSAF/CVRF) or CVE schema are lacking in their
> models/schemas/trees what is needed to automatically handle software
> components/dependencies
> e.g. of what would be needed: http://schemas.dmtf.
> org/wbem/cim-html/2.46.0+/CIM_SoftwareElement.html
>
>
>
>
> On Wed, Mar 15, 2017 at 11:47 PM, Kurt Seifried <kseifried@redhat.com>
> wrote:
>
>> On Wed, Mar 15, 2017 at 2:05 PM, Leo Famulari <leo@famulari.name> wrote:
>>
>> > On Wed, Mar 15, 2017 at 12:27:47PM -0700, Seth Arnold wrote:
>> > > I suspect the solution is for people who rely upon these scanning
>> tools
>> > to
>> > > do the leg work themselves on the packages they care about. (i.e., the
>> > > packages that annoy them the most.)
>> >
>> > I think those of us who find these tools useful should work to improve
>> > the CVE database by adding the "fixed-in-version" information as it
>> > becomes available.
>> >
>>
>> This is a major goal of
>>
>> 1) using the JSON format with richer data [a]
>> 2) allowing other people (e.g. CVE Mentors) to edit the data
>>
>> [a]
>> https://github.com/CVEProject/automation-working-group/blob/
>> master/cve_json_schema/DRAFT-JSON-file-format-v4.md
>>
>>
>>
>> --
>>
>> Kurt Seifried -- Red Hat -- Product Security -- Cloud
>> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>> Red Hat Product Security contact: secalert@redhat.com
>>
>
>

--001a114398182d8b94054adac449--
