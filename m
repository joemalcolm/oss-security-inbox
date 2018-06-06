X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6311" "Wednesday" "6" "June" "2018" "09:08:33" "-0700" "Denis Magda" "dmagda@apache.org" "<CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>" "162" "Re: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114" "^Cc:" nil nil "6" "2018060616:08:33" "[oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114" (number mark "        dmagda@apach Jun  6  162/6311  " thread-indent "\"Re: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114\"\n") "<20180606133359.149aeded@redhat.com>" ("<CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>" "<20180606133359.149aeded@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32241 invoked by uid 550); 6 Jun 2018 17:10:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22384 invoked from network); 6 Jun 2018 16:09:19 -0000
X-Gm-Message-State: APt69E2rszGwA//3O3kDspAz0TM5WQDPOoaMCzVJsckN9KT63UIkM10N
	RKqEKdsDRttrLQRTyGwV6CM7R9O8c5DGYn4jB8ysaw==
X-Google-Smtp-Source: ADUXVKLdClEAJLljpReFUemVzv13mSORihZ1todD/sG8ybYnQsMYlS4lPI1kxeGwOVZYrVuU/YZJosyAPqtMdbGH8Vs=
X-Received: by 2002:a2e:4302:: with SMTP id q2-v6mr2645818lja.55.1528301343694;
 Wed, 06 Jun 2018 09:09:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180606133359.149aeded@redhat.com>
References: <CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>
 <20180606133359.149aeded@redhat.com>
X-Gmail-Original-Message-ID: <CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>
Message-ID: <CAK0qHnpaLFap2tdujYok1DkRg9PNDXtaxBpO2CY6saSOsnsyZg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b3785d056dfb62d3"
Cc: oss-security@lists.openwall.com, dev <dev@ignite.apache.org>, 
	"Rai, Harendra" <harendra.rai@ncr.com>
Date: Wed, 6 Jun 2018 09:08:33 -0700
From: Denis Magda <dmagda@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to
 existing CVE-2014-0114
To: Tomas Hoger <thoger@redhat.com>

--000000000000b3785d056dfb62d3
Content-Type: text/plain; charset="UTF-8"

Hello Tomas,

We've just updated the version of Binutils because Ignite doesn't use this
library directly. So we don't need to inject addBeanIntrospector call.

Binutils are used by some dependencies like Cassandra. Let us confirm that
the dependencies shouldn't be upgraded.

--
Denis

On Wed, Jun 6, 2018 at 4:33 AM, Tomas Hoger <thoger@redhat.com> wrote:

> Hi Denis!
>
> On Fri, 1 Jun 2018 10:16:50 -0700 Denis Magda wrote:
>
> > [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114
> >
> > Severity: Important
> >
> > Vendor: The Apache Software Foundation
> >
> > Versions Affected: Apache Ignite 2.4 or earlier
> >
> > Impact:
> > An attacker can execute arbitrary code on Ignite nodes in the case
> > when Ignite classpath contains arbitrary vulnerable classes.
> >
> > Description:
> > Apache Ignite used commons-beanutils-1.8.3.jar library which did not
> > suppress the class property, which allowed remote attackers to
> > "manipulate" the ClassLoader and execute arbitrary code via the class
> > parameter, as demonstrated by the passing of this parameter to the
> > getClass method of the ActionForm object in Struts 1.
>
> This announcement is very light on details.  Would it be possible to
> provide more details, ideally a link to the fix that was applied to
> address this issue?
>
> Searching for more information, I found out that the upstream Jira
> ticket for this issue should be:
>
> https://issues.apache.org/jira/browse/IGNITE-8472
>
> The ticket is non-public, but its content is leaked via a mailing list:
>
> https://www.mail-archive.com/search?l=issues%40ignite.
> apache.org&q=subject%3AIGNITE-8472
>
> This has some important info, indicating that the problem (only?)
> affects Ignite for .NET.  The reported problem basically seems to be:
> Ignite for .NET bundles commons-beanutils 1.8.3 and that should be
> upgraded to 1.9.2.  Looking into apache.ignite.2.4.0.nupkg and
> apache.ignite.2.5.0.nupkg, I can see that commons-beanutils upgrade as
> requested did happen in 2.5.0.
>
> Note that I do not see any commons-beanutils jar in
> apache-ignite-fabric-2.4.0-bin.zip and
> apache-ignite-fabric-2.5.0-bin.zip.  Are those, as well as source
> distribution, considered unaffected?
>
> Now back to the CVE - I do not believe that your re-use of the old
> CVE-2014-0114 is correct.  In the report, there was some ambiguity
> whether Struts or Commons-BeanUtils should be blamed for the flaw,
> however it seems to be explicit enough that the CVE-2014-0114 is for
> Struts:
>
> http://openwall.com/lists/oss-security/2014/06/15/10
>
> As noted in the mail, the problem wasn't fixed in Commons-BeanUtils,
> which only added mechanisms to make it easy for applications using
> Commons-BeanUtils to easily disable processing of the "class"
> property.  It did not even disable processing by default, as noted in
> the release notes:
>
> http://commons.apache.org/proper/commons-beanutils/
> javadocs/v1.9.2/RELEASE-NOTES.txt
>
> """
> Release 1.9.2 mainly addresses a potential security issue when accessing
> properties in an uncontrolled way. In a nutshell, if an application that
> uses
> Commons BeanUtils passes property paths from an external source directly to
> the getProperty() method of BeanUtilsBean, an attacker can access the class
> loader via the class property available on all Java objects.
>
> In version 1.9.2 now a special BeanIntrospector class was added which
> allows
> suppressing this property. Note that this BeanIntrospector is NOT enabled
> by
> default! Commons BeanUtils is a low-level library, and on this layer it
> cannot
> be decided whether access to a certain property is legal or not. Therefore,
> an application has to activate this suppressing BeanIntrospector
> explicitly.
> This can be done with the following lines of code:
>
> BeanUtilsBean bub = new BeanUtilsBean();
> bub.getPropertyUtils().addBeanIntrospector(
>     SuppressPropertiesBeanIntrospector.SUPPRESS_CLASS);
>
> Now all access to properties has to be done via the specially configured
> BeanUtilsBean instance. More information about this issue can be found at
> https://issues.apache.org/jira/browse/BEANUTILS-463 or in section 2.5
> of the user's guide.
> """
>
> Note that there was a request to assign a separate CVE for the
> BeanUtils part that was rejected (actually, CVE-2014-3540 was assigned
> and later rejected), see this post from Mitre for details:
>
> http://openwall.com/lists/oss-security/2014/07/08/1
>
> It has few parts that are relevant to Ignite:
>
> """
> In particular, the 1597344 change has this documentation:
>
>    Adding this instance as BeanIntrospector to an instance of
>    PropertyUtilsBean suppresses the class property; it can then no
>    longer be accessed.
>
> This is an additional step that would need to be followed for any
> currently shipped product that relies on commons-beanutils. Simply
> picking up version 1.9.2 does not solve the problem. The product's
> source code must additionally be modified by (for example) changing
> or adding an addBeanIntrospector method call.
> """
>
> Did Ignite get any other changes related to this issue apart from
> upgrading Commons-BeanUtils?  If not, Commons-BeanUtils upgrade should
> not be expected to solve the problem (if Ignite actually was affected /
> used Commons-BeanUtils in a vulnerable way, which isn't demonstrated in
> the IGNITE-8472).
>
> Another relevant part is:
>
> """
> If any other product makes a security announcement that they have
> added
> addBeanIntrospector(SuppressPropertiesBeanIntrospector.SUPPRESS_CLASS)
> or equivalent code as a change to the default behavior, then there can
> be an individual CVE ID for that product. However, if any other product
> simply makes a security announcement that they have decided to ship
> commons-beanutils 1.9.2 -- but the class property remains exposed in
> the product as it is shipped and installed by default -- then a CVE ID
> would not be assigned.
> """
>
> If Ignite got/gets a fix that leverages the SUPPRESS_CLASS from
> Commons-BeanUtils 1.9.2 to disable processing of the class property, it
> should get its own CVE assigned.
>
> --
> Tomas Hoger / Red Hat Product Security
>

--000000000000b3785d056dfb62d3--
