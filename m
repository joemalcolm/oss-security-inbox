X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2916" "Tuesday" "6" "December" "2016" "10:26:14" "-0800" "Grant Murphy" "grantcmurphy@gmail.com" "<CAHXGaxAS6wW7s9oxeWqC=UNk2t=Lw7fT7=UmozsP5NpeL40Wbw@mail.gmail.com>" "88" "Re: [oss-security] Opensource Python whitebox code analysis tool recommendations" nil nil nil "12" "2016120618:26:14" "[oss-security] Opensource Python whitebox code analysis tool recommendations" (number mark "U       grantcmurphy Dec  6   88/2916  " thread-indent "\"Re: [oss-security] Opensource Python whitebox code analysis tool recommendations\"\n") "<2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7988 invoked by uid 550); 6 Dec 2016 18:47:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30090 invoked from network); 6 Dec 2016 18:26:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Hu6f1HMgKtkl3ULiq3xHc8mSi7YtFKw6g7H0rMaYHd0=;
        b=ZZsdVpazqR7gvZN7KEP2nT2xmM9poSoZjSWKULc6gj7yLWbGfkgHy4I03MFoXE2qeU
         LqsMRvsCGaCYDlz2835NhFf7Pa7dM63hbHJaAaANbkntlgEMvtRO+Imayj2tzeK5n4Zx
         0YW0HNt3WN5r8Q4S27DmHVH1SPjb/En30Cvw7Iull3wSny2K0fcdbX1cl2hQ4mh1bHq3
         H98yrhdGwZ724ooozt/S2z85ryYQVMZsbuYoc+vmKJk2IvW4R4107puUmmggG6GW6BcU
         PXQw6j1ELnC6A3mSV9PM4Ub5C1xgJvfVk+PdKqcrSuNoGnUBi0HoXYUudU7Vppf0pUHA
         IuWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Hu6f1HMgKtkl3ULiq3xHc8mSi7YtFKw6g7H0rMaYHd0=;
        b=W7QSZxoIh4KUdWfPfV2Hi0iesuQyB8rsLkXBaeiiNzxL2cIczMntqnn3i+4wgp9oZ8
         gXuFNLt8Uw7udl02hz7y0xKmWK6c++BFhj40zw9+w+r0eOyfp6rFhR6VYzRDXmYRbWbu
         3dO3WFVES67OkTFOTfUA4Cdh5AKFTd+++NppIvHC2wpYhWN95CSAYuVuxQ8+2k4+BNjg
         jvs88GECrBdsD9qkl/6eHZKfcU2yxz1fvbTNi9JqWGuXXqPgwGUZIld2DummEC5/QfOA
         teX9gQgu4wlOTtuFPtxE8igvURbpiKlotdXT0Q7L9/TRGkoLeWiZ2cOPNfBmGuiAmHCs
         s4dw==
X-Gm-Message-State: AKaTC02OS3OViYYyesbpAyyjDPdntB+Dq3hE9/5O4cTQ/9lG29B07PhCQpAL6GJykt6wXeBdfW9ImwF+SdonGA==
X-Received: by 10.31.48.85 with SMTP id w82mr14953266vkw.69.1481048775013;
 Tue, 06 Dec 2016 10:26:15 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>
References: <2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>
From: Grant Murphy <grantcmurphy@gmail.com>
Date: Tue, 6 Dec 2016 10:26:14 -0800
Message-ID: <CAHXGaxAS6wW7s9oxeWqC=UNk2t=Lw7fT7=UmozsP5NpeL40Wbw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1144023c213cee0543018a44
Subject: Re: [oss-security] Opensource Python whitebox code analysis tool recommendations

--001a1144023c213cee0543018a44
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 6, 2016 at 9:02 AM, Fiedler Roman <Roman.Fiedler@ait.ac.at>
wrote:

> Hello list,
>
> I just stubled over effects of following programming error due to unwanted
> singleton in Python, bypassing intended process restrictions (allowed
> number
> of elements in my case) and of course data corruption:
>
> class A:
>   def __init__(self, value=[]):
>     self.value=value
>     self.valueCloned=value[:]
>   def show(self):
>     print 'IDs value %x, cloned %x' % (id(self.value),
> id(self.valueCloned))
>   def append(self, data):
>     self.value.append(data)
>
> # Keep reference to avoid garbage collection interference.
> objFirst=A()
> objFirst.show()
> objNext=A()
> objNext.show()
> # Check references to prohibit optimization.
> if objFirst==objNext: raise Exception('Impossible')
>
>
>
> As this type of error seems to be more common in code, at least according
> to
> grep, are there tool recommendations to do automatic analysis of code?
>
> It should trace all non-trivial (not None, int, float, str, ...)
> constructor
> arguments assignments and catch at least problematic invocations like
> "self.value.append". A problem is, that in many cases just existence of
> constructor like the one before does not automatically lead to
> corruption/concurrency issues. For example the tool should not trigger on
> this
> (older but still in use) version of django_common/http.py or at least, when
> triggering, only at "json.dumps()".
>
> class JsonResponse(HttpResponse):
>   def __init__(self, data={ }, errors=[ ], success=True):
>     """
>     data is a map, errors a list
>     """
>     json = json_response(data=data, errors=errors, success=success)
>     super(JsonResponse, self).__init__(json, content_type='application/
> json')
>
> def json_response(data={ }, errors=[ ], success=True):
>   data.update({
>     'errors': errors,
>     'success': len(errors) == 0 and success,
>   })
>   return json.dumps(data)
>
> Due to weak typing, it might be too hard to catch all problematic
> locations,
> e.g. field modified in subclass. Without source code analysis tools
> available
> to do such checks, I would also try out any approaches where the argument
> value is made immutable thus leading to crash in testbed.
>
> It would be great, if the tool would do the whole analysis more from the
> security than code quality perspective: it is more interesting to audit own
> code and referenced/redistributed third party stuff for things that "are
> very
> likely to be problematic/vulnerable" than have a quality tool recommending
> to
> change all those lines, which is not quite realistic.
>
> Kind regards,
> Roman
>

You could check out Bandit:
https://security.openstack.org/#bandit-static-analysis-for-python

I'm not sure it quite fits what you're after could be worth a look.

--001a1144023c213cee0543018a44--
