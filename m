Received: (qmail 18109 invoked by uid 550); 31 Oct 2025 14:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18075 invoked from network); 31 Oct 2025 14:08:49 -0000
Message-ID: <18864274-6f78-4252-8c9c-558e7a699c51@pipping.org>
Date: Fri, 31 Oct 2025 15:08:39 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP-rxft9ra58z9EZ@yuggoth.org>
 <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
 <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
 <aP_L7mY0OXB2iDmk@symphytum.spacehopper.org>
 <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
 <eba4214e-0ba3-454a-8450-71d9e8943aaa@redhat.com>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <eba4214e-0ba3-454a-8450-71d9e8943aaa@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 10/31/25 11:06, Petr Menšík wrote:
> Yes, we do 
> not backport medium or low CVEs always, especially if fixing them in 
> older versions is complicated and requires non-trivial rewriting.

I'd be curious how many users are actually aware of that.
I have a related blog post…

   How much security is in long-term support (LTS)?
  
https://blog.hartwork.org/posts/how-much-security-is-in-long-term-support/

…from March 2025 with examples.

