Received: (qmail 7473 invoked by uid 550); 30 Mar 2024 13:34:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7452 invoked from network); 30 Mar 2024 13:34:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1711805687;
	bh=RhGGNdIQr/gotdHoS4WH6CpQT1YlSKaPg8hBZrqTH8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=QQt+tCOkO0OMtgmceePQI2sp7AEjMuaEu7mnVlKiUW3L0mKt3KXZUvwEI+rz9nAk8
	 67jCGo9ulvtbSWiBz/3UxXIne1nes3jbbBpk5aMRZAzx5bYW6SS87wDew6L8CBGIv4
	 jhHxSbFK9BV3Rea/1VaJDH4AvcjVvJPI+X3vBBPbtkgwJmdb+mDAzZdLIrH9hYtkhr
	 GJG48BrPxo0hBdpN0kw1omy7iHX+XTD1Mpr1NoG6764fT7rA8hLodrSudDOfVICDT/
	 U5JOd8xoUxS0E4c12iy0O13/hc0Bb3T18CQvwKT3ciNgcuHlqouQKyN6wMG3Ndtzo+
	 BRkhnhKOoDAaw==
Message-ID: <f5595730-197f-41ed-9c72-d92bd6eddd36@canonical.com>
Date: Sat, 30 Mar 2024 09:34:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <4f2d978b-e94d-44c1-b6d1-d4c18c9d9eb0@canonical.com>
 <uu7uid$4ig$1@ciao.gmane.io>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Content-Language: en-CA
Autocrypt: addr=marc.deslauriers@canonical.com; keydata=
 xsFNBEykmjEBEAC+VX6eFplv3QA9iIVAMNgRQF0DAeNnsGr7zf7h41xRIbwm7rilBrCit/CD
 Wv9uAqK/8e3kDkHZW75EeT5rYP3JUHTW5RtCm5K9KRu+DlzDLVU0xzM9//B1lrxtycQFcGnI
 JSrRIQaCwucEdJvnL9goX/uGDaAxQBhvafjg9CWJX8YRSmSpembFcEQlZ+0vPbmJ7Xwfa0M3
 gwujtU1xN5ghvAdYw1dBpC0lRyr231AKX1umT18gTng2f6KLux2NpkkYEdKAL+42eORE5pDc
 o4kTi9OubR6JOX7zju4hMCAa81LA9ktTVdCkIsmk3r0f4fRJcfLaSZifoSwGSw5Ixj/dXRbV
 X+2hsqnMldQaWuZWx3Ku+eArtEEFt6/UTDGDo2U+Rc0YiUJlwQqmFvOQ+rt/bmz6bb7lSmVg
 rRO6nYD/4IWgJfV88n/kl/mVwiNGWc2UpwJeGJgI9+pF3nYLRaH1f6+edKa8ttXRymD2oJxZ
 HE0b6803wJYR+X99s3OdCfkliG/Nq/0IyslSGDH5SNcQNVqIqfs3es5Vqxfm6dS8MT4xHFQe
 Z9wPAuvEZbRKTrzHnTgPFx41WM8Te8wu8/BRNYE0IdeAMxMA4ESBP24B41BUilRrMZ9F4vPg
 3Gra/q00shx7KKkHtIsvGRUFHRQqKASlvlB/1heEoIiXySotVwARAQABzTFNYXJjIERlc2xh
 dXJpZXJzIDxtYXJjLmRlc2xhdXJpZXJzQGNhbm9uaWNhbC5jb20+wsF3BBMBCgAhBQJMpJ4s
 AhsDBQsJCAcDBRUKCQgLBRYCAwEAAh4BAheAAAoJEGVp2FWnRL6TqXIP/iG/CZTSTHEVW0LB
 LTCSfNx2H106xjd6DqWmeqGR5QrlK1g00OyyozXUII1SclhfC0FDald3dN9d7rS45QygonMj
 CNLd6K+Xio5XYihvrL8qlsqyQsVKlRGqYcPhwV/e27R0LFm8SRiZ+RwzscZaZi5xzd/EKWRP
 HQKEgpzXwaiAsQBRz0QFOzI+BeHy3GsH/q8zBFpkbsxRHpFB1//A3xP8sCc/7u5KpABQNAX4
 wJLamFI7+9mGrQR/BhbBkHUDtbuW1Gdm2hnMC2LBRQtg0NnG2HG2AUc8x+etER4T1GL/X7FM
 FRgvjVu13KTfxH83DXfwuB5Fwxj4dXqIRcI4eNZ3TQUrR0fcN1EQsvKevk46kuvynelEhs50
 VzFAH9dpPW2m7tP3Sx6GVsl/FxyVstv0N/9SD3k3bcDqhR8cN0RzV89uroZA6frGiIBLYS+Y
 Uk2D6Hed0CMkJ6oI/OPr/6Jy/2u+dPiyh1GcY7KUjPXnwDhM5OKpv/reHydb7UkthpWS+FyU
 rmsH4NC4Of4ioh6PcyPkGJc03OEusVnJjD57PSNZTJja1VFpjdcbZQib1FGRtMuEd1xMNKs7
 P6nwPLg8Mvz/76fFuZ4LxdGzLyF7gCVbJJRfLq6+JZQVDdYJpUyqiWyB3AW4FxKmXWxUyX2x
 /dlZtO9jglqS3WBo0lwNzsFNBEykmjEBEADERUcWnNLbn/jwepqqsWZubjEZtTml5QZfA6V7
 uoIDJw77pawbJYOUXfbm3ucOgGh+63H5WJzofZsMkjTd7MeXL+FNnZ8NCMPmlSglVhM6pUsz
 8o+GNZI1NHk2lZ/gy1KE2WIpiuQOkKsbUlg4yDM52iILuxttlMdL6Nbg6Ov4fef+CNXc+Vh5
 K3emo79PPQCLFDFluqeK89xIaFChoLPxLO8+ftTpznrHwBoqtIvG7QKEMCidrV949QyqNq8P
 Tx8XyEGP06QIMjdnk3ebgFpjOw+Az781RrxZ16NRRzO9Z1yYg/Zr2uwMXTYXPnMXkIXTRvyS
 OTY7iEA5b0Dv2TUG41gF1MXdtWz6199Mqv1KtjOusCwQndCehpGpCeuTCEBZaNzpU/+S5Zaa
 hHwuERZrO9dvsnuH6MEfKZt5LwEx0D7L1fifHu9VxSR+NBiA/DjWF4Msedw4RIY96Xn1Ge0q
 5eaEmueyqyutifQI5M2LpsMF8pE+7cRjWsoQspZm5oP+GNJRER9Y+VTuzRBcmW4TIgOVpUi/
 wDYLR5j1N5gzQyUk+jiib5Sjw+Gf7s2spKxmb/o2YNQBH8I8GvhABVFbh/DimeY5oNxSNszA
 Lb1C1wbfsXm6mL7nCRJX3BnYa1vbEMcN05Q7RzxLqpQ2lRH6B5eTmzrQFexwGINtslm0EwAR
 AQABwsFfBBgBCgAJBQJMpJoxAhsMAAoJEGVp2FWnRL6TBhMQAKJobcbMR1QK8/RmLI8smL6U
 hFiBgyW3Xo9GPA5YOEPd1YvAS+3qffyTARSC/gP9byQqbWYoXm0Dvkf5Iq4rtVeUZD0TWbWS
 PezeD7efm7M5/58ha9umLW9EFn2qzeQUw0n1l3h33bhFn6zhjq+EODm9AzJX+xEWokS0jCOD
 ptaTtKjeVuSdhLKNzaCQnVJfPPbmM2VLi5+i1oTtXOhveFLKATcnLIg+gM/uufAicX/V3yCM
 UVFUgxVWDuDoq/eMjd6UsRJ6f3tJ+R4ZLxbOkxTFGV31yGHgYt9Rwa4y2r/7fGqDW6TCJnbP
 y+9vYzh6GeTQRiG0DVPYeQRu+OzzT3Har9Rfqu0/+9+qvXrXyseulxWCfI2KpB78tGVa9BX5
 gBKX7vQ0x0Sg5LcNPRtBgjsDMiN69EBcs7sJvNLlS1KDUREZiycNOvxWcai61RqUFe8Dedqh
 QUlQTeGUqSN3ORYfkHwEeewtcmDH0CYNK40aSu95n8FHzFPuJUNOQ6grECC+DhxZP3aIKN2F
 OR+RvQyJCTIa6I5oHpvAemEqso1FsRg79s9XGLbCE19v8woYHrQM/UDbZm9G1nnsdKXFT9hg
 +TVd2CYz6wFpSrzxxEB8jgeHEptgwaA8UN/knyPk5NV9ZwIgz374+2YiasCoaCJ7i3wCpNbp
 8Dn5ROoNmabo
In-Reply-To: <uu7uid$4ig$1@ciao.gmane.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

On 2024-03-29 22:48, Tavis Ormandy wrote:
> On 2024-03-30, Marc Deslauriers wrote:
>> On 2024-03-29 19:49, Tavis Ormandy wrote:
>>> On 2024-03-29, Marc Deslauriers wrote:
>>>>> I think we should have a policy that if issues are suspected to be actively exploited, that the issue goes public immediately.  If even there is no patch or mitigation, there's not a lot of benefit to keeping it private.
>>>>
>>>> In this case, we had no reason to believe it was being actively exploited.
>>>>
>>>
>>> Yeah... but you also have no reason to not believe that?
>>>
>>> What do you propose they were doing with their backdoor?
>>
>> They were still attempting to get it into distros,
>>
> 
> You can do two things at once, I suspect attackers can too :)
> 
>>> Isn't doing `dnf downgrade xxx` a mitigation, or `systemctl xxx stop`?
>>
>> All we knew was that a payload was being attached to liblzma, it took a while to
>> get the other details. We wanted to make sure it wasn't propagating to packages
>> it compressed.
>>
> 
> Sure - but why do you have to do that in private? You can get everyone
> to help get those answers and converge on the correct solution
> quickly.
> 
> The attackers already knew about this issue, so you were just keeping it
> from defenders... that doesn't make sense to me.

I'll let you in on a little secret: malicious entities also read this list.

There is no way to discuss this in public without turning a single malicious 
entity into 10 000 malicious entities once the information is widely known.

Making sure the impact and mitigations are known before posting this publicly so 
that everyone knows what to do before the 10 000 malicious entities start 
attacking is just common sense.

> 
>> It wasn't obvious at the time that simply reverting to the previous version
>> would be a complete solution, and I don't think telling everyone to stop ssh on
>> all their servers and cloud instances is a viable mitigation at all.
>>
> 
> Yeah, you're making big decisions for a lot of people here.
> 
> If your organization was not on the list and got compromised during the
> embargo, do you think you would be thanking everyone for delaying your
> response?

If your organization got compromised because the 0-day was published before a 
mitigation was available, would you be thanking the reporters?

> 
>>>
>>> We all want users to be secure as fast as possible. The discussion is
>>> whether keeping backdoors embargoed helps achieve that.
>>
>> It took a day to figure out what it was, what the impact was, and how to get it
>> fixed, at which point there was agreement it shouldn't be keep embargoed. Nobody
>> was pushing for it to be embargoed any longer than it needed to be.
>>
> 
> Yeah, my point is just this would have been better handled in public!
> 
> I respect your work and I'm glad you were working on this, but in public
> we could have got more eyes on this!
> 

That is the problem, having more eyes on a 0-day also means more eyes from 
malicious entities. Neither having an embargo nor immediately posting publicly 
are ideal solutions. There needs to be a compromise, and while I understand and 
respect your point of view, I don't think we'll ever see eye-to-eye on what the 
acceptable compromise should be.

Marc.
