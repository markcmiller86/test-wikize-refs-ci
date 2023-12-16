# What I learned in the way of Software Sustainability Engineering (SSE) during ECP: A short exchange with Peter Lindstrom, compression researcher and [zfp] Project Leader.

I happened to be exchanging emails with [Peter Lindstrom](https://github.com/lindstro) asking various questions about [zfp] software sustainability engineering (SSE) challenges.

For background, at its core [zfp] is a C library for lossy compression of multi-dimensional arrays of floating point data.
Over the course of ECP, the [zfp] project was pushed not only to add a number of operational features including C/C++ language-friendly array types, C/C++/Fortran/Python language bindings, OpenMP and CUDA parallelism and HDF5 integration but also to harden various of the SSE practices used in the development of [zfp].
This article focuses on the effort to harden the SSE practices of [zfp].

To stimulate some dialog, I asked Peter various questions such as...

* How much help did you feel you got with [zfp] SSE work?
* Do you feel like LLNL/ECP did its part by providing funding and deploying technologies and it was left up to you and your team to learn to use and apply them?
* Do you feel like ECP really supported you in your SSE quests on [zfp]?
* If you had it to do all over again (I mean the SSE learning curve/ramp), how would you do it differently and/or what resources would have made it easier/faster?
* Was there anything particularly frustratingly time consuming?
* Where do you think SSE practices on [zfp] compare with other similar projects you are aware of or familiar with?
* Do you feel like your own personal investments in applying SSE practices in [zfp] was time well spent or do you feel like it took you too far astray of your core research objectives?
* Do you feel like you have been asked to wear far too many different hats to make [zfp] the success it has been?

Below are Peter's thoughts inspired by these questions.

> I can absolutely say that [zfp] would not be anywhere near where it is without the *funding* ECP provided.
> This allowed me to hire developers/SEs to do the work to transform [zfp] from a research prototype to a production quality package.
> I kind of had to learn on the job; other than funding, I can't point to anything in particular that ECP provided to facilitate this learning process, though I am aware that ECP has also supported various training activities (of which I unfortunately did not had the opportunity take advantage of).

> Working together with ECP AD and ST customers has also benefited [zfp] in terms of learning about features that would be useful and in terms of integrating [zfp] into other packages and applications.
> I found many ECP meetings to be productive because most of these interactions occurred at them.
LLNL provided additional support through [RADIUSS](https://computing.llnl.gov/projects/radiuss), particularly to develop the Python API.
> There has been other related funding (e.g., an EMCR project, the Variable-Precision Computing SI, ASC FRIC), though primarily for basic or applied research on floating point data compression and not directly responsible for SSE on [zfp].

> I have certainly learned a lot of SSE over the last seven years that [zfp] has been funded by ECP.
> Because of that, I no longer consider myself only a researcher.
> On the other hand, I don't consider myself an expert software developer, either.
> I think I have found the right balance somewhere in the middle of R&D.
> I have at least made an attempt to adopt a number of best practices in software development.

> In some sense, I also feel that LLNL's change in stance from supporting only restrictive, custom licenses (circa 2015) to instead encouraging open source development under more permissive licenses has also helped a lot.
> I used to maintain [zfp] release assets in a somewhat ad-hoc fashion on the LLNL Computing department's web server.
> [Ian Lee](https://github.com/IanLee1521) took it upon himself to set up a GitHub repo for [zfp] (and other products), which really got the ball rolling on starting new SSE practices.

> To be honest, I don't think I would have benefited as much from taking formal training to learn the tools and practices I now use daily.
> I feel that I need to get my hands dirty and *do* in order to learn.
> But it was very helpful to work with and learn from someone (Markus Salasoo), a developer on [zfp] during the earlier part of ECP) who had industry experience with SSE.
> I think I relied a bit too much on Markus in the beginning.
> It was only after he left the project that I really had to role up my own sleeves and get immersed in git/GitHub and learn how to use these and other tools.

> In this sense, I feel like learning on the job can be a good thing.
> On the other hand, I find that we (Danielle and I) sometimes spend a lot of time searching for answers to deal with oddball CI and software tool issues.
> It would be nice to have access to a help desk or hotline to get questions like these answered quickly from experts to cut down on time spent searching for answers.
> Sometimes Slack helps to get such questions answered, sometimes not.

**Editor's note:** My own experience with even the free version of ChatGPT is that it often helps me to find a key entry point into a large body of documentation on a topic I am not familiar with.
For example, I used it to help guide my adding OpenMP parallelism to the [hello-numerical-world](https://github.com/markcmiller86/hello-numerical-world/tree/main) example and it got me, an OpenMP novice at the time, up and running in less than an hour.
I think if I had had to read through documentation, it would have been more than 4 hours.
That said, the free version of ChatGPT doesn't know anything newer than ~2021.

> From a personal perspective, I remember feeling a bit overwhelmed having to learn ReadTheDocs, Sphinx, and RST to write [zfp] documentation from scratch in only a few weeks to meet an ECP deadline while Markus was working on writing tests and hooking up Travis CI.
> In retrospect, it really wasn't that bad--everything seems easy once you know it--but it can seem challenging when you don't even know where to start.
> I was very close to going with tools I was more familiar with (LaTeX, HTML) and alternatives (e.g., Doxygen) but am glad I bit the bullet and went with RTD, Sphinx and RST.
> With the amount of documentation we now have, it would have been impossible to scale things up with a less capable documentation tool chain.

**Editor's note:** Humans are often bad at judging cost/benefit trade offs.
When the [VisIt](https://visit.llnl.gov) project [transitioned from Subversion to git/GitHub](https://bssw.io/blog_posts/continuous-technology-refreshment-an-introduction-using-recent-tech-refresh-experiences-on-visit), we were all worried about the added time and effort needed to review each other's pull requests.
Within just a week or two of being on GitHub, we had caught enough problems in PR reviews that we were quickly convinced the cost was worth the benefit.

> When it comes to SSE practices (e.g. testing, documentation, code quality, and portability), I think [zfp] is in a good place when compared with other, similar packages.
> Developers working on similar packages have even commented that [zfp] works out of the box without hitches while other packages do not fair so well...something even documented in published papers.

> On the other hand, [zfp] is basically a two-person team and there's only so much we know.
> Compared to efforts like MFEM and RAJA, I feel that we have much to learn in terms of SSE practices.
> These projects have much larger teams, however, so maybe the comparison is unfair.

> I'm actually grateful that I got to spend this time to learn how to take a research prototype and transition it into a product that's being widely used and even productized by a big company like Intel.
> Yes, I'm doing far less research today, but I also enjoy developing [zfp] and am proud of the work we've done.
> So I have no regrets in that regard.

> I also do think that I'm busier than ever.
> Leading [zfp] R&D is (or at least could be) a full-time job.
> I would love to hire more SEs and researchers (maybe a postdoc) to expand the [zfp] team, but there's currently no budget for that.
> That would also mean more time overseeing people and less time doing what I truly enjoy--getting my fingers dirty.

> Something that I have contemplated (if I had the funds) is standing up a small committee/council/advisory team to guide design decisions and help with software engineering issues.
> These would be people I could go to with difficult questions that I feel experienced industry experts who develop real products would know how to answer and where I feel I lack expertise.
> These would also be people with some familiarity with the [zfp] code base.

> One challenge with [zfp] is that we support so many languages, back-ends, and other products and use cases (including storage, I/O, communication, host-device transfers, in-memory array representation), and I'm at best a novice with respect to most of them.
> Similarly with SSE, e.g., when it comes to designing classes and APIs, and even how to best implement certain functionality (thread-safe compressed-array views come to mind).
> There are also design issues to consider in terms of performance, e.g., to make [zfp] hardware friendly, to make it easily parallelizable for GPUs, etc.
> I can't be an expert on all these topics, so having access to those who do these things for a living would be valuable.

[zfp]: https://computing.llnl.gov/projects/zfp
