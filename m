X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4153" "Thursday" "12" "November" "2015" "10:04:09" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<56445609.9050301@gmail.com>" "86" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Cc:" nil nil "11" "2015111209:04:09" "[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        gsunde.orang Nov 12   86/4153  " thread-indent "\"[oss-security] CVE-Request: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<20151111160641.GQ1213@sentinelchicken.org>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>" "<20151109215303.GN1213@sentinelchicken.org>" "<5641360D.8070102@eenterphace.org>" "<20151111002307.GP1213@sentinelchicken.org>" "<56431D4F.7090006@eenterphace.org>" "<20151111160641.GQ1213@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11434 invoked by uid 550); 12 Nov 2015 09:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11392 invoked from network); 12 Nov 2015 09:04:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=9YzJIlYV+XPyy5Zhs5TR9mOcu55cWAQOcjfxnJCKq4A=;
        b=jWsC3ho8ybIdMbClxBFv3JEoqiSKMCmmawgGFbkERrxeuFGBBYE+St3lzac8N3+aat
         cWrUVSlIlRClTfg4cIH/yzanv3aTcCvE4y9DzkYCNvbTbS7kQtmA5LOB2Svb78ILELog
         JwzfVPm3chlzocmmZ+cnni1Gswe87kHZFu3Gom4d3E8smkMfe7sPyOpkHDq6/LkDcb3N
         64ASOhqV7U4hVsJf3sJgVzoRabSlgaIoe6cnEQi07UDOxUsI20ZHfFPYHiCpo39YqG/9
         L7OeczRNgv4ASEiBatVgq/4GH9SgX2hyleLqX0sq7Fp8J+kEignkcCnpo/H96n3k+1fl
         Kzuw==
X-Received: by 10.28.146.139 with SMTP id u133mr16438567wmd.29.1447319044771;
        Thu, 12 Nov 2015 01:04:04 -0800 (PST)
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
 <5640442C.1050501@redhat.com> <20151109215303.GN1213@sentinelchicken.org>
 <5641360D.8070102@eenterphace.org>
 <20151111002307.GP1213@sentinelchicken.org>
 <56431D4F.7090006@eenterphace.org>
 <20151111160641.GQ1213@sentinelchicken.org>
X-Enigmail-Draft-Status: N1110
Message-ID: <56445609.9050301@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151111160641.GQ1213@sentinelchicken.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Cc: cve-assign@mitre.org
Date: Thu, 12 Nov 2015 10:04:09 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-Request: Assign CVE for common-collections remote code execution
 on deserialisation flaw
To: oss-security@lists.openwall.com

CVE-Request:
I appreciate this general discussion around deserialization issues and
hope this will make a jump-start for sustainable improvements on both
Java and application level in the long run.
Aside of that however, I'd like to go back to Jason's original request
to Mitre to get a CVE ID assigned to this particular issue with the
Apache Commons Collections functors package (specifically in the
InvokerTransformer class).
So people (esp. Java applications developers) have a unique reference
when analysing and fixing this particluar one (by e.g. removing the
class, make it non-serializable or wait for a new Commons Collections
release that includes that fix - whatever is most appropriate to their
application's context).

On 2015-11-11, 17:06 Tim wrote
> 
> Hi Moritz,
> 
>> The problem here is that the amount of potential "sinks" is incredibly
>> large - everything on your classpath. No objection here to hardening the
>> specific instance, but thinking one will be safe afterwards is a
>> misconception. Like someone else put it, it's a game of whack-a-mole.
> 
> Does every class in your classpath implement Serializable?  If your
> library is implemented that way, it is broken.  Web architectures used
> to be implemented such that you had to encode HTML in hundreds of
> separate places, one by one.  Did we stop receiving and displaying
> user input because of it?  No, we changed our archtectures to
> accommodate a better understanding of XSS.
> 
> I don't think fixing one instance of a broken Serializable class will
> make us safe, but playing whack-a-mole with every application that
> uses serialization to transfer data isn't attractive either.  Note
> that eliminating the use of serialization is harder because that
> requires a *functional* design change, rather than a change in
> implementation details.
> 
> 
>> Sure, as long as nobody does any funny stuff in their default
>> constructors, setters or getters. But the difference there is that these
>> unmarshallers (at least the ones I know of) only act on a very specific
>> set of classes you mostly control.
>> Looking at the flawed deserialization design at hand...
> 
> I'm not saying Java's serialization architecture is good.  Oracle
> definitely needs to do something.  But passing the buck up to all
> applications and asking them to eliminate serialization is impractical
> and *dangerous*.  The higher up you go in the software stack, the less
> developers understand security.  Very few developers will get the
> message that they can't use it to process untrusted data and that will
> lead to a continued series of vulnerabilities.
> 
> 
>> And that's the assumption you are making. There is no such statement in
>> the Serializable definition, neither is anywhere defined what is
>> acceptable behavior for a readObject method and neither forbids the
>> collection API to do something dangerous in a getter (which in OpenJDK
>> seems to generally be an acceptable call).
> 
> I agree that there's no statement about serialization security there.
> That's not surprising at all, because Oracle really sucks about
> security, always giving us a "not my problem" attitude.  That's why I
> mentioned XMLDecoder.  Even something as blatantly vulnerable as that
> interface doesn't receive any documentation that it shouldn't be used
> with untrusted data.  So how can you expect them to rise to the
> occasion and document something slightly more nuanced?
> 
> However, my assumption is the only one that makes sense, given the
> design of Java's serialization.  Clearly, the lack of documentation
> has confused everyone, though, which is why we're having this
> discussion.
> 
> 
>> Maybe forcing them to take a position on the RMI implementation will be
>> of some use. They clearly assume deserialization is safe there and fun
>> fact, even use it for the authentication crendentials.
> 
> Anything to nudge them into taking responsibility *for something,
> ever* would be a good start.  However, last time I tried to convince
> them of something like this, they just told me "use a security
> manager".  lulz.  So good luck.
> 
> Thanks much,
> tim
> 

