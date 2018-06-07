X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7065" "Thursday" "7" "June" "2018" "19:32:22" "+0300" "Andrey Gura" "agura@apache.org" "<CAK1mX7HgUV2_fcro107pDA8e5VNQD_NDcyz53QKZhhKFhAb3fA@mail.gmail.com>" "174" "Re: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114" nil nil nil "6" "2018060716:32:22" "[oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114" (number mark "U       agura@apache Jun  7  174/7065  " thread-indent "\"Re: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114\"\n") "<CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>" ("<CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>" "<20180606133359.149aeded@redhat.com>" "<CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27781 invoked by uid 550); 7 Jun 2018 17:11:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11798 invoked from network); 7 Jun 2018 16:32:37 -0000
X-Gm-Message-State: APt69E3qf7ToBSpb0wvv6b5jirJAQS7HoO8EswtW6ttBbs0elTjXTLys
	+bkbjpsvBQG/nGfR00hC7jnpuiW9giXeAeTEvqY=
X-Google-Smtp-Source: ADUXVKKgokw9oEKzflk0k3tDvOechgyV2QI4zr7SBsNXNAIAmDDQHmTC190FVAgbsCSLn/JV4pP7E3IKmGxem6rAaVU=
X-Received: by 2002:a1c:d905:: with SMTP id q5-v6mr2287732wmg.78.1528389142859;
 Thu, 07 Jun 2018 09:32:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>
References: <CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>
 <20180606133359.149aeded@redhat.com> <CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>
From: Andrey Gura <agura@apache.org>
Date: Thu, 7 Jun 2018 19:32:22 +0300
X-Gmail-Original-Message-ID: <CAK1mX7HgUV2_fcro107pDA8e5VNQD_NDcyz53QKZhhKFhAb3fA@mail.gmail.com>
Message-ID: <CAK1mX7HgUV2_fcro107pDA8e5VNQD_NDcyz53QKZhhKFhAb3fA@mail.gmail.com>
To: dev <dev@ignite.apache.org>
Cc: Tomas Hoger <thoger@redhat.com>, oss-security@lists.openwall.com, 
	"Rai, Harendra" <harendra.rai@ncr.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to
 existing CVE-2014-0114

Hi,

I've looked to the problem and didn't see any problem with BeanUtils.
Only module that depends on BeanUtils is Cassandra cache store in
order to map POJO to CQL queries. Usages are only on Ignite side with
configured Cassandra cache store and can't exploit described
vulnerability from my point of view. All classes are already
accessible on Ignite node (so class loader is also accessible without
any exploites) and this classes don't exist on Cassandra side.

I also don't see any reason to include BeanUtils library into Ignite
.Net package because it never uses this library. Just a bug in build
procedure.

Thanks!

On Wed, Jun 6, 2018 at 7:08 PM, Denis Magda <dmagda@apache.org> wrote:
> Hello Tomas,
>
> We've just updated the version of Binutils because Ignite doesn't use this
> library directly. So we don't need to inject addBeanIntrospector call.
>
> Binutils are used by some dependencies like Cassandra. Let us confirm that
> the dependencies shouldn't be upgraded.
>
> --
> Denis
>
> On Wed, Jun 6, 2018 at 4:33 AM, Tomas Hoger <thoger@redhat.com> wrote:
>
>> Hi Denis!
>>
>> On Fri, 1 Jun 2018 10:16:50 -0700 Denis Magda wrote:
>>
>> > [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114
>> >
>> > Severity: Important
>> >
>> > Vendor: The Apache Software Foundation
>> >
>> > Versions Affected: Apache Ignite 2.4 or earlier
>> >
>> > Impact:
>> > An attacker can execute arbitrary code on Ignite nodes in the case
>> > when Ignite classpath contains arbitrary vulnerable classes.
>> >
>> > Description:
>> > Apache Ignite used commons-beanutils-1.8.3.jar library which did not
>> > suppress the class property, which allowed remote attackers to
>> > "manipulate" the ClassLoader and execute arbitrary code via the class
>> > parameter, as demonstrated by the passing of this parameter to the
>> > getClass method of the ActionForm object in Struts 1.
>>
>> This announcement is very light on details.  Would it be possible to
>> provide more details, ideally a link to the fix that was applied to
>> address this issue?
>>
>> Searching for more information, I found out that the upstream Jira
>> ticket for this issue should be:
>>
>> https://issues.apache.org/jira/browse/IGNITE-8472
>>
>> The ticket is non-public, but its content is leaked via a mailing list:
>>
>> https://www.mail-archive.com/search?l=issues%40ignite.
>> apache.org&q=subject%3AIGNITE-8472
>>
>> This has some important info, indicating that the problem (only?)
>> affects Ignite for .NET.  The reported problem basically seems to be:
>> Ignite for .NET bundles commons-beanutils 1.8.3 and that should be
>> upgraded to 1.9.2.  Looking into apache.ignite.2.4.0.nupkg and
>> apache.ignite.2.5.0.nupkg, I can see that commons-beanutils upgrade as
>> requested did happen in 2.5.0.
>>
>> Note that I do not see any commons-beanutils jar in
>> apache-ignite-fabric-2.4.0-bin.zip and
>> apache-ignite-fabric-2.5.0-bin.zip.  Are those, as well as source
>> distribution, considered unaffected?
>>
>> Now back to the CVE - I do not believe that your re-use of the old
>> CVE-2014-0114 is correct.  In the report, there was some ambiguity
>> whether Struts or Commons-BeanUtils should be blamed for the flaw,
>> however it seems to be explicit enough that the CVE-2014-0114 is for
>> Struts:
>>
>> http://openwall.com/lists/oss-security/2014/06/15/10
>>
>> As noted in the mail, the problem wasn't fixed in Commons-BeanUtils,
>> which only added mechanisms to make it easy for applications using
>> Commons-BeanUtils to easily disable processing of the "class"
>> property.  It did not even disable processing by default, as noted in
>> the release notes:
>>
>> http://commons.apache.org/proper/commons-beanutils/
>> javadocs/v1.9.2/RELEASE-NOTES.txt
>>
>> """
>> Release 1.9.2 mainly addresses a potential security issue when accessing
>> properties in an uncontrolled way. In a nutshell, if an application that
>> uses
>> Commons BeanUtils passes property paths from an external source directly to
>> the getProperty() method of BeanUtilsBean, an attacker can access the class
>> loader via the class property available on all Java objects.
>>
>> In version 1.9.2 now a special BeanIntrospector class was added which
>> allows
>> suppressing this property. Note that this BeanIntrospector is NOT enabled
>> by
>> default! Commons BeanUtils is a low-level library, and on this layer it
>> cannot
>> be decided whether access to a certain property is legal or not. Therefore,
>> an application has to activate this suppressing BeanIntrospector
>> explicitly.
>> This can be done with the following lines of code:
>>
>> BeanUtilsBean bub = new BeanUtilsBean();
>> bub.getPropertyUtils().addBeanIntrospector(
>>     SuppressPropertiesBeanIntrospector.SUPPRESS_CLASS);
>>
>> Now all access to properties has to be done via the specially configured
>> BeanUtilsBean instance. More information about this issue can be found at
>> https://issues.apache.org/jira/browse/BEANUTILS-463 or in section 2.5
>> of the user's guide.
>> """
>>
>> Note that there was a request to assign a separate CVE for the
>> BeanUtils part that was rejected (actually, CVE-2014-3540 was assigned
>> and later rejected), see this post from Mitre for details:
>>
>> http://openwall.com/lists/oss-security/2014/07/08/1
>>
>> It has few parts that are relevant to Ignite:
>>
>> """
>> In particular, the 1597344 change has this documentation:
>>
>>    Adding this instance as BeanIntrospector to an instance of
>>    PropertyUtilsBean suppresses the class property; it can then no
>>    longer be accessed.
>>
>> This is an additional step that would need to be followed for any
>> currently shipped product that relies on commons-beanutils. Simply
>> picking up version 1.9.2 does not solve the problem. The product's
>> source code must additionally be modified by (for example) changing
>> or adding an addBeanIntrospector method call.
>> """
>>
>> Did Ignite get any other changes related to this issue apart from
>> upgrading Commons-BeanUtils?  If not, Commons-BeanUtils upgrade should
>> not be expected to solve the problem (if Ignite actually was affected /
>> used Commons-BeanUtils in a vulnerable way, which isn't demonstrated in
>> the IGNITE-8472).
>>
>> Another relevant part is:
>>
>> """
>> If any other product makes a security announcement that they have
>> added
>> addBeanIntrospector(SuppressPropertiesBeanIntrospector.SUPPRESS_CLASS)
>> or equivalent code as a change to the default behavior, then there can
>> be an individual CVE ID for that product. However, if any other product
>> simply makes a security announcement that they have decided to ship
>> commons-beanutils 1.9.2 -- but the class property remains exposed in
>> the product as it is shipped and installed by default -- then a CVE ID
>> would not be assigned.
>> """
>>
>> If Ignite got/gets a fix that leverages the SUPPRESS_CLASS from
>> Commons-BeanUtils 1.9.2 to disable processing of the class property, it
>> should get its own CVE assigned.
>>
>> --
>> Tomas Hoger / Red Hat Product Security
>>
