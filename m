Received: (qmail 21928 invoked by uid 550); 2 Oct 2025 13:31:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32661 invoked from network); 2 Oct 2025 13:11:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759410679; x=1760015479; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AkaZRIZ2pAkIwQ4QMwwVSehLkoBL6syI2F/Rh+h8HCg=;
        b=D42kA9eqk21CtBOMUMANbQ+NOEi3w9TPYqUd835NEjs7zdzQgbswgwDeXzf7YUCd+2
         /Kpyiss9EBqeab5B93/ZJNI0UZhZmDOJn0Z3levTHxZFvlB9BUdhoSIprmc2cRbBYm6x
         gQEL/6ENeKCcs5zyHWgYWssGaefwHtO9cnA04z7D6gB1NSN/mtdw/g5khJe2c0SF7YeM
         epko3YLp70mYRJoGbK4OEae2PaO8EBPui1D47LZmJw27pvB3mqZVXMWN+sW9sFwaCnik
         1WhzvcewQF+uEVzFwQs9zzPalzuV0tIbubkQMhcJr7UHr7WmFZ9/QD5Ar4MLg+nHHiVh
         43AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759410679; x=1760015479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AkaZRIZ2pAkIwQ4QMwwVSehLkoBL6syI2F/Rh+h8HCg=;
        b=eFmDfIOqxzm8eJ8sCYfFRYXQrDC7vGeh7yW8AorkEgWIM0VHjmaYOMsHdNc0UiB22O
         +PyqMWY5aIcWMASyhOiWcvTIDFcLJOKgKJZixM29DEgsMjfv4WoC6kGnNOhZIzfJ9KFy
         GssX78DIdpBDlCGogx2Ti6uoTEQp0bf7gvOsSYduoxJ+B1VzBfVVdRbQ2OjN5sZgQUv7
         Y76QvuMvcodYiCt9YxmY4Ue2PJaJZ2bms8oT70DJQZihRvCy/F2WC6XaK5k7RIgCOe0u
         aS08EyJDUj7z29mHuXlucmm8i3LUCEPKs5MpkyZbLVGQrIroKRWpWP/q640dp6lHZVVI
         CmBQ==
X-Gm-Message-State: AOJu0YzgVNpcvnmLc6LeIEBWhF6s3E07EHD36oqA1sMNmaXQ9NgyDysD
	u7FKjiYI3bs+U12580xaUNlKJ3x5RBoplBn6JHzBzatM2eyrBTZUom90M/9sKQ==
X-Gm-Gg: ASbGncuq5DGegim0Xws8J6gkPll6+F2JV/MyM+DIJ1vPVtSlZwtPI4oRO1X44in7+k7
	oeFyOaUVSRvlLdxGridCTnzF15tIbG8JVDWaY2U6cqNpS3nqN79CpG3JOoTAsjM3MPAMbzNgHOd
	+JxpWPl3I2w2LRMh6N/QVbtCPILE546omS0DTIUyc3jk1G2Oyix13QIABgp+sJDO4AfhNj3ko4M
	6Xu3it3mD17EQ5+fRDGEBWVM3gyPGj89aeyrpdzaIIOMcopta9peU94USypfEAjYiBEqOP+1Yta
	j97O3uauFh01FDwoti/+c6uqka9WkKgHDW/ZCFUONJ5ynXmbm2rZqouBZJLdSIJzRmE2GaDJJzn
	/CvAgTK+aiL25g/ojBT8hfDHAm/ZbJzrbH5upoyOHXNTonLS3XS/5O2b0vw==
X-Google-Smtp-Source: AGHT+IHOgfR4OluUAY7fcJOW0yIwbiqBPvcYnpDhWKkVUkKtdIURi5bo6gN3zjbSrn+/vxVfOWoK4A==
X-Received: by 2002:a05:600c:8b42:b0:46e:59dd:1b4d with SMTP id 5b1f17b1804b1-46e6127bacamr63562895e9.16.1759410679003;
        Thu, 02 Oct 2025 06:11:19 -0700 (PDT)
Message-ID: <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
Date: Thu, 2 Oct 2025 15:11:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
Content-Language: en-US
From: Attila Szasz <szasza.contact@gmail.com>
In-Reply-To: <2025060713-aloe-decency-a74c@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

I’m not going to frame this in a flame-inducing way, but MITRE has been 
sitting on my dispute request for months without even adding a clear 
“DISPUTED” flag. That makes it feel like my input doesn’t really matter 
in this process in the grand scheme of vulnerability management, so be 
it. For the same reason, I’d rather not repeat my letter to MITRE here, 
as the arguments there, while clear and very important in my view, risk 
inviting the same somewhat stillborn discussion and answers.

For the sake of product security folks who rely on consistency: the 
Linux CNA recently registered a batch of HFS/HFS+ CVEs that require 
manipulating malformed filesystems as a first step. This seems 
inconsistent with how similar cases were previously handled.

I don’t think grepping for |slab-out-of-bounds| is sufficient for 
automation here. Even prompting an LLM on the syzkaller reproducer could 
already help filter filesystem-corruption cases more effectively if that 
previous decision about rejecting these classes of bugs were to be 
enforced practically. Of course, a full decision still needs human 
review, but it would reduce false positives and make the rules feel more 
consistently enforced.

—Attila

On 6/7/25 10:17, Greg KH wrote:

> On Fri, Jun 06, 2025 at 06:00:09PM +0200, Attila Szasz wrote:
>> I don't see how Canonical Product Security is a bad actor here for caring
>> about the actual security of downstream users and acting in a timely
>> manner about an issue that they considered to impact Ubuntu Linux,
>> correctly.
>>
>> Canonical has a scope of
>> "All Canonical issues (including Ubuntu Linux) only."
>>
>> kernel.rg has a scope of
>> "Any vulnerabilities in the Linux kernel as listed on kernel.org, excluding
>> end-of-life (EOL) versions."
>>
>> Both of them were contacted.
> For the record, the CNA for kernel.org was NOT contacted here at all for
> this issue.  You sent a message to security@kernel.org, NOT
> cve@kernel.org.  security@k.o has nothing to do with CVE assignments and
> is NOT responsible for the kernel.org CNA.  Our documentation should
> state this very clearly, if not, we will be glad to update it where
> needed, just let us know.
>
>> 4.2.2.1 CNAs SHOULD assign a CVE ID if:
>>
>>      the CNA has reasonable evidence to determine the existence of a
>>      Vulnerability (4.1), and
>>      the Vulnerability has been or is expected to be Publicly Disclosed, and
>>      the CNA has appropriate scope (3.1).
>>
>> On 3rd Nov, 2024, Kees Cook writes:
>> "The hfsplus filesystem currently has no maintainer, and since we don't
>> view filesystem corruption flaws to be particularly sensitive, probably
>> the best thing to do would be to send the patch like normal to the public
>> linux-fsdevel@vger.kernel.org (please keep me and other others in this
>> email's CC now on the CC for your patch).
>>
>> Let's see if the VFS maintainers have any other thoughts on this?
>> (I am forwarding them a copy of the original email now.)"
>>
>> This is pretty much the last update—no patch is introduced, nor is a CVE
>> issued. The issue is not viewed as sensitive.
> Again, no one asked for a CVE to be assigned, nor did anyone notify the
> kernel.org CNA about this issue.
>
>> My understanding is that 4.1 was not satisfied according to them.
> Nope, we never were even notified.  That being said, we defer to the
> filesystem maintainers here, and they have stated many times before that
> hand-crafted filesystems are not a vulnerability according to their
> rules.  That is why we rejected the CVE eventually.
>
>> CVE-2025-0927 was reserved by Canonical on 31st January, 2025, around the
>> time they fixed the issue internally.
>>
>> At this point, Canonical, as per 4.2.2.1, assigned a CVE for Canonical
>> Ubuntu Linux for the issue they deemed a vulnerability in Ubuntu Linux.
>>
>> The kernel neither assigned nor fixed anything regarding the email that was
>> sent to them.
>>
>> After Canonical’s fix went live, the public advisory was published on
>> 18 March, 2025.
>>
>> Now, according to:
>>
>> 4.2.1.2 For Publicly Disclosed Vulnerabilities, if the CNA with the most
>> appropriate scope:
>>
>>      preemptively documents that it will not assign, or
>>      responds within 72 hours that it will not assign, or
>>      does not respond within 72 hours,
>>
>> then an appropriate Root MUST make a Vulnerability determination.
>>
>> So the kernel.org CNA team would have had 72 hours to respond to the public
>> disclosure if they thought that the issue was in their scope—but they
>> didn’t.
> Again, you never notified the kernel.org CNA about this, nor do we even
> attempt to watch all CVEs that are being created in the system as we
> just assume that all CNAs are "good actors" and don't do foolish things
> like this :)
>
>> So what the hell happens to consumers of the Ubuntu Linux product
>> that don't want their boxes rooted by non-sudoers according to the CNA?
>>
>> How could Canonical be the bad cowboy here? Someone please enlighten me.
> They created a CVE against the upstream kernel.org codebase without EVER
> contacting the kernel.org CNA.  That is against the CNA rules, which is
> why cve.org reassigned the CVE to kernel.org when notified of this.
>
>> In fact, I'm not even sure upstream would have ever fixed this unless
>> Salvatore
>> reached out from Debian basically asking what had happened:
>>
>> https://lore.kernel.org/lkml/Z9xsx-w4YCBuYjx5@eldamar.lan/
>>
>> Note that the initial report was received by security@ early November, 2024.
>> Salvatore's message is dated 20th March.
> Again, security@k.o has nothing to do with CVEs.
>
>> After that, Canonical helps Debian by sharing the fix they used in the
>> Ubuntu kernel.
>>
>> Then, on 24th March, 2024, the Linux CNA finally expresses interest in
>> owning the CVE—that is, 6 days after the disclosure and 72 hours past the
>> deadline defined in 4.2.1.2.
> Again, no one ever notified cve@kernel.org about this, so that is why we
> did not react until we actually were notified, and then we did act then
> to get the CVE assigned back to kernel.org
>
> Hope this helps explain things as to why the kernel.org CNA didn't do
> anything here, because again, they were never notified.
>
> Anyway, we know communication mistakes can happen, not a big deal, we
> got the CVE reassigned properly, which again, happens every few months
> with other companies accidentally assigning CVEs against kernel.org
> stuff, and we move on.  Given we are running at a rate of 13+ CVEs a
> day, stuff like this is bound to happen.  All we can do is properly deal
> with it when we are notified, like we did.
>
> thanks,
>
> greg k-h
