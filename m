X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1464" "Monday" "7" "August" "2017" "15:32:13" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>" "39" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080719:32:13" "[oss-security] Cve issue discussion" (number mark "U       glennrp@gmai Aug  7   39/1464  " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" "<20170807123756.GA27766@suse.de>" "<CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>" "<c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com>" "<CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>" "<A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21874 invoked by uid 550); 7 Aug 2017 19:33:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21850 invoked from network); 7 Aug 2017 19:33:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=/cxeMja7TvTXE9bBjnOjtMpwdg4owcxx5Z4zPiN59OI=;
        b=GceCM0s6t8/8Y/TO30xN73yb+Gqvi8ovpj0MvKsopsucKYNCRifDHEDpVgLvL3ADdV
         QcMdhG1uq72tFKLQJeHlctrPjIob5EK7DvqKXm3nwRffsLTJElI0gQ2I33ZMpZdzh9Xa
         sCp2rdffO0Nx4dsTbyie6HKKbnRGY2UsmjBd4t0AAEqDVIUrEBcN66FtYMhAcFMxohut
         H2+Z/+2ZDSHw9jA5O0m1w848XYM7AWnCurGYulDSFTauaGnRWvoXeEoZwokNGkAJoYcU
         GthMskWz86aprmUGU3zGCO1mbFtfGspqEFEfeaZNAjwW9CTQIkkwSwXRhre47AFTriAD
         Dw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=/cxeMja7TvTXE9bBjnOjtMpwdg4owcxx5Z4zPiN59OI=;
        b=eUQovlI0A6d99pemmzDfPErx0TmS9r+Cjulbqn331j78V1hZHANAwKa2V61XFi13FC
         4iX3i4beev4XtQZiFR8iDT2lLTLtgyDs2vhDi1sOP2M3VvSqxIFtrC69rJvJ+UsR8gLy
         6DAoI4Q98imnV/Uu2h3QhIroq7UfV7usoZLFkRa4SAKuN57KQ+OOym9omWuOHXINJbVN
         G/yUx1sJL8Cc0TgZQ0Z04aNu4HipZvZ3hZNC52cR42m3mJJak0Qj81vaPWvt6f0rq5pR
         2x1I7Z7Rf2lG86VgL/mlX2mbE8O9QVtMJtiDw3W6oWsgQ30qZW3OrAkbRx9lYpzhJ3du
         6DzA==
X-Gm-Message-State: AIVw110yzaik4eiavA05GqJdzsXf6MeRKpge3MjYD5aDFUfoq0WRUDLJ
	q+0pO7xOkhC8eCta8DFy8l3Nx5VC7g==
X-Received: by 10.107.15.70 with SMTP id x67mr1527632ioi.87.1502134373833;
 Mon, 07 Aug 2017 12:32:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda> <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
 <20170807123756.GA27766@suse.de> <CA+PdXctggn-AoYVKJQZS=+jbnEga4P2AkJa6OJaAS_GUgw0b_g@mail.gmail.com>
 <c3f3c2ec-aee4-75db-562c-7183fa0e3a29@oracle.com> <CA+PdXcuw7YLfhHO8wydX-4yhgmnGxN7fb=b+z+DQsSgV+73Tjg@mail.gmail.com>
 <A1AB11FC-E9D5-421B-BB66-C90AC49C3401@apple.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Mon, 7 Aug 2017 15:32:13 -0400
Message-ID: <CA+PdXcvmTRrks_ZnXB_EyMHdm6ahap9yNHmf4hV5gLwVBoz_Vw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Cve issue discussion

It doesn't occur on my own Ubuntu platform without ASAN.  But anyone
running with
a malloc that initializes the memory (trusted systems, etc) would be affected

On Mon, Aug 7, 2017 at 1:22 PM, Jesse Hertz <jesse_hertz@apple.com> wrote:
> fwiw, double check and make sure the issue occurs in libpng without ASAN. Sometimes ASAN can cause "heisenbugs" which only happen if ASAN is used.
>
>> On Aug 7, 2017, at 9:57 AM, Glenn Randers-Pehrson <glennrp@gmail.com> wrote:
>>
>> OK I'll request a CVE for this libpng issue.
>>
>> Glenn
>>
>> On Mon, Aug 7, 2017 at 9:05 AM, John Haxby <john.haxby@oracle.com> wrote:
>>> On 07/08/17 13:47, Glenn Randers-Pehrson wrote:
>>>> It's not causing a crash, just a delay.  You'll safely get either an OOM
>>>> message or an EOF message.and no memory leak.
>>>>
>>>
>>> That's scant comfort when your browser is the one hit by the OOM killer
>>> and then again when you restart it.  And also while you're wondering
>>> what's going on because your laptop is basically completely
>>> non-responsive ...
>>>
>>> So yes, it's a remote DoS and definitely worth a CVE.  We have had other
>>> similar CVEs in the past with image handling libraries not being
>>> sufficiently paranoid.
>>>
>>> jch
>>>
>>>> Glenn
>>>>
>>>> On Mon, Aug 7, 2017 at 8:37 AM, Marcus Meissner <meissner@suse.de> wrote:
>>>>> Hi,
>>>>>
>>>>> if it could crash the image reader I would consider it "remote denial of service"
>>>>> classed and CVE worthy.
>>>
>
