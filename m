Received: (qmail 30130 invoked by uid 550); 14 Mar 2025 11:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30109 invoked from network); 14 Mar 2025 11:50:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1741953023;
	bh=VvQjW049rzFdIWawVm2WCl8gU7RldmgaltBYu6Y1i6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=kEZ3GHxojIth/YluRZL9zKGgtgZYvjhdctEhZw1T24scWk3S7Gr7W+Yy0TS7X+uRR
	 4erU+MC9skN9PrE+lugMyZEysdBQ2auXixSerMgSz94KOTyvHKMC8lHgAQB57l0Pms
	 8v9FQFBj0lKrc04X+57kpj+gDBtY0wTJBIerTPEbGlGomhcSM6MtGFK7ivZdx2DBhk
	 /wf2LWb/vOdXkrQZBIxFJfaQQsxBVldBPv5yyaix/PpNp6faLyxXRVS9NMJ1Ko9YBB
	 q2rclj8uoNGyp/OYH0+EX6ZIqf+dIMLpM9ck9TokXYM9GXZvuuqh1IQRORN2chIXdn
	 LV62b8TSiSWtg==
Message-ID: <402ad4ad-a846-4b17-b32c-fa0ea120cd36@canonical.com>
Date: Fri, 14 Mar 2025 07:50:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <SA1PR15MB4840CBCB4D36E36C85723862DAD32@SA1PR15MB4840.namprd15.prod.outlook.com>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Content-Language: fr, en-CA, en-US
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
In-Reply-To: <SA1PR15MB4840CBCB4D36E36C85723862DAD32@SA1PR15MB4840.namprd15.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType <=
 2.13.0

On 2025-03-13 16:50, Vulnerability Disclosure wrote:
> In the following change
> 
> +        if ( FT_QNEW_ARRAY( outline.points, limit + 4 ) ||
> +             FT_QNEW_ARRAY( outline.tags, limit )       ||
> +             FT_QNEW_ARRAY( outline.contours, limit )   ||
> +             FT_QNEW_ARRAY( unrounded, limit + 4 )      )
> 
> The out of bounds write requires a short integer overflow with a limit value of 0xFFFD - 0xFFFF. In the patch when we change the second call to FT_QNEW_ARRAY to remove the addition of +4 the size value is now negative and the call to FT_QNEW_ARRAY call will fail with an error code causing the logic to short circuit and prevent the out of bounds write from occurring. While limit is still signed the security risk is mitigated by the early exit condition.

Oh I see, this commit wasn't written as a security fix, it just happens to now 
trigger the negative number check in FT_QNEW_ARRAY which prevents the issue from 
happening.

> 
> If we also want to make the limit variable unsigned, we can additionally patch based off the following FreeType commit:
> 
> https://gitlab.freedesktop.org/freetype/freetype/-/commit/73720c7c9958e87b3d134a7574d1720ad2d24442
> 

Ultimately this is the proper fix, but there are a whole slew of other changes 
that went into 2.13.3 to go along with it that change signed short to unsigned 
short in a bunch of other places, such as FT_Outline. Just backporting that 
commit will prevent limit from going negative and the check in FT_QNEW_ARRAY 
will no longer work.

Marc.
