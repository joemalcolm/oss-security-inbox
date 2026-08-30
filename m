X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/30/4
Message-ID: <2a3ee84e-768d-88e7-efbe-26058aa16756@apache.org>
Date: Sun, 30 Aug 2026 17:52:49 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71257: Apache Wicket: Configured file upload limits are not enforced when the multipart request has already been parsed 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-core) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-core) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-core) 10.0.0 through 10.10.0

Description:

Apache Wicket enforces the upload limits configured on a form or upload field while parsing a multipart request with Apache Commons FileUpload. If the request body has already been consumed by another component, Commons FileUpload returns no items and Wicket falls back to reading the upload through HttpServletRequest#getParts(). The per-file size limit (for example Form#setFileMaxSize) and the file count limit (Form#setFileCountMax) are not applied to the parts obtained that way, and no exception is raised, so the upload is processed as though those limits had been satisfied. A remote uploader can therefore submit files that are larger, or more numerous, than the application permits, up to whatever the component that parsed the request allows. A part carrying no Content-Type header is additionally read into memory in full during parsing, so the size of that allocation is determined by the request and bounded only by those same external limits.

The total upload size limit (Form#setMaxSize) is not affected. Commons FileUpload compares the declared Content-Length against it before reading the body, so a request declaring an oversized length is rejected before the fallback is reached.

The fallback is reached in deployments where a servlet or filter has already parsed the request body — for example a servlet annotated with @MultipartConfig, Spring Boot's multipart resolver, or any filter that calls HttpServletRequest#getParameter() on a multipart request. It applies to the Wicket components that accept uploads on that path, including Form with FileUploadField, FileUploadToResourceField and AjaxFileDropBehavior. Applications that configure neither a per-file nor a file-count limit are not affected, as Wicket applies neither by default.

This issue affects Apache Wicket: from 8.0.0 through 8.18.0, from 9.0.0 through 9.23.0, from 10.0.0 through 10.10.0.

Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue. Users of Apache Wicket 7.x or older, which are no longer supported, should upgrade to a supported version. As a workaround, configure equivalent limits in the component that parses the request — for example spring.servlet.multipart.max-file-size and max-request-size, or maxFileSize and maxRequestSize in @MultipartConfig or in the web.xml <multipart-config> element.

Credit:

GitHub: @deprrous (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-71257

