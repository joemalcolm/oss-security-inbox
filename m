X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/21/12
Message-ID: <20130121140019.GD7652@kludge.henri.nerv.fi>
Date: Mon, 21 Jan 2013 16:00:19 +0200
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request - Wordpress 3.5 Full-path disclosure vulnerability
Content-Type: text/plain; charset=utf-8

On Mon, Jan 21, 2013 at 11:29:45AM +0000, Giles Coochey wrote:
> Wouldn't setting PHP "display_errors" be for development only, the
> entire point of the directive is to give the developer more
> information 'in page'.
> 
> http://php.net/manual/en/errorfunc.configuration.php#ini.display-errors
> 
> Quoting:
> "This is a feature to support your development and should never be
> used on production systems (e.g. systems connected to the
> internet)."

You are correct. No CVE, but WordPress should still fix this. Please note that
some configuration errors still get CVE, but this is not one of those in my
opinion/knowledge. Path disclosures are usually low-priority issues.

---
Henri Salo
