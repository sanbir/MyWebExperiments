INSERT INTO [Tags] ([Id],[Name],[Created],[Modified]) VALUES ('2ba5929e-27f1-4283-93e8-d1ececf2166e',N'Test2',{ts '2013-09-01 15:00:00.000'},NULL);
GO
INSERT INTO [Tags] ([Id],[Name],[Created],[Modified]) VALUES ('c7f181b7-e808-409c-933d-65edeb6abee1',N'Test1',{ts '2013-09-01 15:00:00.000'},NULL);
GO
INSERT INTO [Images] ([Id],[Name],[Extension],[Created],[Modified]) VALUES ('84384293-13ae-404a-9556-5d95d5fd83bf',N'Small Picture',N'gif',{ts '2013-09-01 15:00:00.000'},NULL);
GO
INSERT INTO [Images] ([Id],[Name],[Extension],[Created],[Modified]) VALUES ('71574153-81e0-4b3e-82a2-4411afb2e728',N'Big picture',N'gif',{ts '2013-09-01 15:00:00.000'},NULL);
GO
INSERT INTO [FeedStatistics] ([Id],[Application],[Identifier],[Users],[Visits],[Created],[Modified]) VALUES ('f004e4cd-e0d7-4fe7-a8f2-da1f16ff51cb',N'Chrome 27.0',N'7D0F5A7A3489C722C9856E961DE28E86AE283EB4',1,3,{ts '2013-09-01 15:00:00.000'},{ts '2013-09-01 15:00:00.000'});
GO
INSERT INTO [FeedStatistics] ([Id],[Application],[Identifier],[Users],[Visits],[Created],[Modified]) VALUES ('b0b30a5c-0fcc-4169-8bb7-2518e1ccce03',N'Chrome 27.0',N'7FA8930E012C2519E390E5D6BB430B56A49CB31D',1,4,{ts '2013-09-02 15:00:00.000'},NULL);
GO
INSERT INTO [BlogEntries] ([Id],[Header],[HeaderUrl],[Author],[ShortContent],[Content],[Visits],[Visible],[PublishDate],[Created],[Modified]) VALUES ('58f8819a-b7d2-4870-bf88-21d4a17a4f0f',N'My first post',N'my-first-post',N'FirstName LastName',N'<p>Some short teaser</p>',N'<p>Some more text</p>',1,1,{ts '2013-09-01 18:00:00.000'},{ts '2013-09-01 15:00:00.000'},{ts '2013-09-01 15:00:00.000'});
GO
INSERT INTO [BlogEntries] ([Id],[Header],[HeaderUrl],[Author],[ShortContent],[Content],[Visits],[Visible],[PublishDate],[Created],[Modified]) VALUES ('f32770dd-6dab-4864-ad36-3aab505f9f22',N'My second post',N'my-second-post',N'FirstName LastName',N'<p><img src="/blogcontent/blogimages/84384293-13ae-404a-9556-5d95d5fd83bf.gif" alt="Small" title="Small" class="picture" />
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et.</p>',N'<p><a class="lightbox" href="/blogcontent/blogimages/71574153-81e0-4b3e-82a2-4411afb2e728.gif" rel="group1" title="Big"><img src="/blogcontent/blogimages/71574153-81e0-4b3e-82a2-4411afb2e728.gif" alt="Big" title="Big" /></a>
</p>

<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>

<pre class="brush: c-sharp;">
foreach (var item in collection)
{
// TODO
}
</pre>',16,1,{ts '2013-09-02 15:00:00.000'},{ts '2013-09-02 15:00:00.000'},{ts '2013-09-02 15:00:00.000'});
GO
INSERT INTO [TagBlogEntries] ([Tag_Id],[BlogEntry_Id]) VALUES ('c7f181b7-e808-409c-933d-65edeb6abee1','58f8819a-b7d2-4870-bf88-21d4a17a4f0f');
GO
INSERT INTO [TagBlogEntries] ([Tag_Id],[BlogEntry_Id]) VALUES ('c7f181b7-e808-409c-933d-65edeb6abee1','f32770dd-6dab-4864-ad36-3aab505f9f22');
GO
INSERT INTO [TagBlogEntries] ([Tag_Id],[BlogEntry_Id]) VALUES ('2ba5929e-27f1-4283-93e8-d1ececf2166e','58f8819a-b7d2-4870-bf88-21d4a17a4f0f');
GO
INSERT INTO [BlogEntryFiles] ([Id],[Name],[Extension],[Counter],[BlogEntryId],[Created],[Modified]) VALUES ('7add611e-f156-499e-a0a2-272dad2b8e76',N'SampleImages',N'zip',1,'f32770dd-6dab-4864-ad36-3aab505f9f22',{ts '2013-09-01 15:00:00.000'},{ts '2013-09-01 15:00:00.000'});
GO
INSERT INTO [BlogEntryComments] ([Id],[Name],[Comment],[Email],[Homepage],[AdminPost],[BlogEntryId],[Created],[Modified]) VALUES ('c136ef08-4160-40cc-9e49-4fdd46f3fdcb',N'Contributor1',N'Some comment',NULL,N'http://www.example.com',0,'f32770dd-6dab-4864-ad36-3aab505f9f22',{ts '2013-09-02 15:00:00.000'},NULL);
GO
INSERT INTO [BlogEntryComments] ([Id],[Name],[Comment],[Email],[Homepage],[AdminPost],[BlogEntryId],[Created],[Modified]) VALUES ('192688c5-cc06-43f9-9ad1-1c838dba7b75',N'Admin',N'Some admin comment',NULL,NULL,1,'f32770dd-6dab-4864-ad36-3aab505f9f22',{ts '2013-09-03 15:00:00.000'},NULL);
GO

