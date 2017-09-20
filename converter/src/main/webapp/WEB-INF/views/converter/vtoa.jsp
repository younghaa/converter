<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<div id="stepConvert">
		<div class="urlconverter-section-1">
			<div class="container">
				<div class="urlconverter-section-left-1">
					
					<div class="container">
						<div class='urlconverter-section-1-1'>
							<div class="row">
								<div class="col-sm-12">
																			<div class="urlconverter-section-1-title">
											<h1>YouTube 변환기 / 다운로더로 MP3, MP4, AVI 비디오 링크 변환</h1>
											<br>
										</div>
																		
									<ul class="urlconverter-section-1-1-form">
										<li>
											<input id="target" type="hidden" value="urlconverter" />
											<input id="arg" type="hidden" value="ko" />
											<input name="texturl" type="text" class="textbox" id="texturl" placeholder="링크를 복사하고 이곳에 붙여넣기 하세요.. 예: https://www.youtube.com/watch?v=e-OfSWE9uV4" title="" value="" />
										</li>
										<li>

											
											<div id="select_main" class="selectbox" tabindex="1">
												<b>파일형식:</b>
												<span>.mp3</span>
												<div class="dropdown radiovideo1" tabindex="1">
												<ul class="dropdown2column">
													<li class="dropdown-header">오디오 형식</li>
													<li><a class="audio-format active" data-value="mp3"><span>.mp3</span></a></li>
													<li><a class="audio-format" data-value="aac"><span>.aac</span></a></li>
													<li><a class="audio-format" data-value="ogg"><span>.ogg</span></a></li>
													<li><a class="audio-format" data-value="m4a"><span>.m4a</span></a></li>
													<li><a class="audio-format" data-value="wma"><span>.wma</span></a></li>
													<li><a class="flac-wav" data-value="flac"><span>.flac</span></a></li>
													<li><a class="flac-wav" data-value="wav"><span>.wav</span></a></li>
												</ul>
												<ul class="dropdown2column">
													<li class="dropdown-header">비디오 형식</li>
													<li><a class="video-format" data-value="mp4"><span>.mp4</span></a></li>
													<li><a class="video-format" data-value="m4v"><span>.m4v</span></a></li>
													<li><a class="video-format" data-value="mov"><span>.mov</span></a></li>
													<li><a class="video-format" data-value="avi"><span>.avi</span></a></li>
													<li><a class="video-format" data-value="flv"><span>.flv</span></a></li>
													<li><a class="video-format-2" data-value="mpg"><span>.mpg</span></a></li>
													<li><a class="video-format-2" data-value="wmv"><span>.wmv</span></a></li>
													
												</ul>
												</div>
											</div>
											<script>
												$("div.radiovideo1 li a").click(function(){
													if($(this).attr("class") == "select-format")
													{
														$("#advanced-options-link").hide();
														$(".resolution").hide();
														$(".abitrate").hide();
														$(".custom-duration").hide();
													}
													else if($(this).attr("class") == "audio-format")
													{
														$("#advanced-options-link").show();
														$(".resolution").hide();
														$(".abitrate").show();
														$(".custom-duration").show();
													}
													else if($(this).attr("class") == "flac-wav")
													{
														$("#advanced-options-link").show();
														$(".resolution").hide();
														$(".abitrate").hide();
														$(".custom-duration").show();
													}
													else if($(this).attr("class") == "video-format")
													{
														$("#advanced-options-link").show();
														$(".resolution").show();
														$(".abitrate").hide();
														if($("#inputstart").is(":checked") && $("#inputend").is(":checked")) {
															$(".vid-re-1").show();
														} else {	
															var r = getValueFromList("#videoResolution li a");
															if (r == "2560x1440" || r == "1920x1080") {
																$('#videoResolution .dropdown li a').removeClass('active');
																$('#videoResolution .dropdown li a.default').addClass('active');
																$('#videoResolution span').html('HD 720p');
															}
															$(".vid-re-1").hide();
														}	
														$(".custom-duration").show();
													}
													else if($(this).attr("class") == "video-format-2")
													{
														var r = getValueFromList("#videoResolution li a");
															if (r == "2560x1440" || r == "1920x1080") {
																$('#videoResolution .dropdown li a').removeClass('active');
																$('#videoResolution .dropdown li a.default').addClass('active');
																$('#videoResolution span').html('HD 720p');
															}
														$("#advanced-options-link").show();
														$(".resolution").show();
														$(".abitrate").hide();
														$(".vid-re-1").hide();
														$(".custom-duration").show();
													}
													$("div.radiovideo1 li a").removeClass("active");
													$(this).addClass("active");
												})
												$(document).ready(function(){
													$("#advanced-options-link").show();
													$(".resolution").hide();
													$(".abitrate").show();
													$(".custom-duration").show();
												});
											</script> 
										</li>
										<li id="advanced-options-link">설정 더보기</li>
										<li id="advancedoptions">
											<ul>
												<li class="abitrate">
													<div id="audioBitrate" class="selectbox" tabindex="3"> 
														<b>오디오 품질:</b>
														<span>192 kbps</span>
														<div class="dropdown" tabindex="3">
															<ul>
																<li><a data-value="320">320 kbps</a></li>
																<li><a data-value="256">256 kbps</a></li>
																<li><a class="active" data-value="192">192 kbps</a></li>
																<li><a data-value="128">128 kbps</a></li>
																<li><a data-value="96">96 kbps</a></li>
																<li><a data-value="64">64 kbps</a></li>
															</ul>
														</div>
													</div>
												</li>
												<li class="resolution">
													<div id="videoResolution" class="selectbox" tabindex="6"> 
														<b>비디오 품질:</b>
														<span>HD 720p</span>
														<div class="dropdown" tabindex="6">
															<ul>
																<li class="vid-re-1" ><a data-value="2560x1440">HD 1440p</a></li>
																<li class="vid-re-1" ><a data-value="1920x1080">HD 1080p</a></li>
																<li><a class="active default" data-value="1280x720">HD 720p</a></li>
																<li><a data-value="854x480">480p</a></li>
																<li><a data-value="640x360">360p</a></li>
																<li><a data-value="426x240">240p</a></li>
															</ul>
														</div>
													</div>
												</li>
												<li class="custom-duration">
													<div class="from">
														<div class="label">원본형식:</div>
														<div class="input-wrapper">
															<input type="text" placeholder="00:00:00" name="hms" class="time-from" value="00:00:00">
															<div class="custom_check">
																<input type="checkbox" id="inputstart" class="disable_ks">
																<label class="show_mobile" for="inputstart">
																	<span></span>
																	<b>비디오 시작</b>
																</label>
															</div>
														</div>
													</div>
													<div class="to">
														<div class="label">변환할 형식:</div>
														<div class="input-wrapper">
															<input type="text" placeholder="23:59:59" name="hms" class="time-to" value="00:00:00">
															<div class="custom_check">
																<input type="checkbox" id="inputend" class="disable_ks">
																<label class="show_mobile" for="inputend">
																	<span></span>
																	<b>비디오 끝</b>
																</label>
															</div>
														</div>
													</div>
												</li>
												<script type="text/javascript">
													$("#inputstart").click(function(){
														if($("#inputstart").is(":checked"))
														{
															$(".time-from").hide();
															var t = getValueFromList("#select_main li a");
															if(t == "mp4" || t == "m4v"|| t == "mov" || t == "avi" || t == "flv") {
																$('#videoResolution .vid-re-1').show();
															}	
														}
														else {
															$(".time-from").show();
															var r = getValueFromList("#videoResolution li a");
															if (r == "2560x1440" || r == "1920x1080") {
																$('#videoResolution .dropdown li a').removeClass('active');
																$('#videoResolution .dropdown li a.default').addClass('active');
																$('#videoResolution span').html('HD 720p');
															}
															$('#videoResolution .vid-re-1').hide();
														}
													});
													$(".time-from").val('');
													$("#inputstart").attr("checked", false);
													$("#inputstart").click();
													$("#inputend").click(function(){
														if($("#inputend").is(":checked"))
														{
															$(".time-to").hide();
															var t = getValueFromList("#select_main li a");
															if(t == "mp4" || t == "m4v"|| t == "mov" || t == "avi" || t == "flv") {
																$('#videoResolution .vid-re-1').show();
															}
														}
														else {
															$(".time-to").show();
															var r = getValueFromList("#videoResolution li a");
															if (r == "2560x1440" || r == "1920x1080") {
																$('#videoResolution .dropdown li a').removeClass('active');
																$('#videoResolution .dropdown li a.default').addClass('active');
																$('#videoResolution span').html('HD 720p');
															}
															$('#videoResolution .vid-re-1').hide();
														}
													});
													$(".time-to").val('');
													$("#inputend").attr("checked", false);
													$("#inputend").click();
												</script>
											</ul>
										</li>
									</ul>
									<a class="start-button" href="javascript:;" id="convert1" onmouseover="changeImage(this, '');" onmouseout="changeImage(this, '');">시작<i class="fa fa-angle-right fa-5"></i></a>
									<div class="urlconverter-section-1-1-content">
										<p>저희 서비스를 사용하시면, <a href="/terms" target="_blank">이용 약관에</a> 동의하시게 됩니다.</p>
									</div>
								</div>
							</div>
						</div>

						<div class="urlconverter-section-1-2">
							<div class="row">
								<div class="col-sm-12">
									<div class="urlconverter-section-1-2-social-buttons text-center">
										<ul>
											<li>
												<div class="fb-like" data-href="https://www.facebook.com/pages/OnlineVideoConvertercom/136274353087599" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="urlconverter-section-1-3-">
							<div class="urlconverter-section-1-3-center">
								<div class="urlconverter-section-1-3-center-title">지원되는 사이트</div>
								<div class="urlconverter-section-1-3-center-sites">
									<div class="row">
										<div class="col-sm-4">
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/youtube-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.youtube.com">youtube.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/funnyordie-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.funnyordie.com">funnyordie.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/facebook-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.facebook.com">facebook.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/vimeo-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.vimeo.com">vimeo.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/dailymotion-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.dailymotion.com">dailymotion.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/break-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.break.com">break.com</a></div>
										</div>
										<div class="col-sm-4">
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/instagram-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.instagram.com">instagram.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/vk-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.vk.com">vk.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/gametrailers-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.gametrailers.com">gametrailers.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/liveleak-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.liveleak.com">liveleak.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/teachertube-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.teachertube.com">teachertube.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/godtube-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.godtube.com">godtube.com</a></div>
										</div>
										<div class="col-sm-4">
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/collegehumor-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.collegehumor.com">collegehumor.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/youku-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.youku.com">youku.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><img src="https://ovc-ustokyyneikyfasnm.stackpathdns.com/assets/images/ssfavicons/bilibili-min.png" alt=""><a target="_blank" rel="nofollow" href="http://www.bilibili.com">bilibili.com</a></div>
											<div class="urlconverter-section-1-3-right-site"><b>....그리고 더 많은 게 있습니다!</b></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>    

				<div class="urlconverter-section-2">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="title">
							<h2>YouTube 컨버터</h2>
							<span class="title-border"></span>
						</div>
						<p>YouTube 컨터버를 사용하여 좋아하는 YouTube 비디오를 다양한 형식으로 전환하세요. 다음의 형식으로 다운로드하세요: MP3, OGG, AAC, FLAC, WMA, WAV, MP4, AVI, MOV, MPG, MKV, FLV, WMV, WEBM, M4V, 3GP. 저희의 프리미엄 YouTube 다운로드는 고속 스피드 다운로드와 우수한 품질의 변환을 제공합니다.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="urlconverter-section-3">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-xs-6 col-xxs-12">
						<div class="urlconverter-section-3-left">
							<div class="title">
								<h3>소개</h3>
								<span class="title-border"></span>
							</div>
							<ol>
								<li>변환하길 원하는 비디오의 URL 또는 링크를 입력하세요.</li>
								<li>원하는 파일 형식을 선택하세요.</li>
								<li>변환 처리를 시작하기 위해 "시작" 버튼을 클릭하세요.</li>
								<li>변환을 성공적으로 완료하면, 변환된 파일을 위한 다운로드 링크를 받게 됩니다.</li>
							</ol>
						</div>
					</div>

					<div class="col-sm-6 col-xs-6 col-xxs-12">
						<div class="urlconverter-section-3-right">
							<div class="title">
								<h3>특징</h3>
								<span class="title-border"></span>
							</div>
							<ul>
								<li><span class="arrow"></span>최신 브라우저와 완벽한 호환</li>
								<li><span class="arrow"></span>고속력 컨버터</li>
								<li><span class="arrow"></span>광범위한 온라인 비디오 포털 지원받기</li>
								<li><span class="arrow"></span>가입 필요 없음</li>
								<li><span class="arrow"></span>무제한 무료 컨버터와 다운로드</li>
								<li><span class="arrow"></span>소프트웨어 설치 필요 없음</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="urlconverter-section-4">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="title">
							<h3>친구에게 추천하세요</h3>
							<span class="title-border"></span>
						</div>
						<p>저희 서비스가 마음에 드시나요? 친구들에게 공유해주세요.</p>
						<ul class="urlconverter-section-4-share-buttons">
							<li><a href="#" target="_blank" title="Share on Facebook" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=https://www.facebook.com/pages/OnlineVideoConvertercom/136274353087599', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=400, top=200, width=650, height=410, toolbar=0, status=0');return false" class="btn-social"><i class="fa fa-facebook-square fa-4x"></i></a></li>
							<li><a href="#" target="_blank" title="Share on Twitter" onclick="window.open('https://twitter.com/intent/tweet?text=HD 비디오 컨버터, YouTube 다운로더로 - OnlineVideoConverter.com&amp;url=https://www.onlinevideoconverter.com/ko', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=400, top=200, width=550, height=440, toolbar=0, status=0');return false" class="btn-social"><i class="fa fa-twitter-square fa-4x"></i></a></li>
							<li><a href="#" target="_blank" title="Share on Google+" onclick="window.open('https://plus.google.com/share?url=https://www.onlinevideoconverter.com/ko', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=400, top=200, width=500, height=650, toolbar=0, status=0');return false" class="btn-social"><i class="fa fa-google-plus-square fa-4x"></i></a></li>
							<li><a href="#" target="_blank" title="Share on Tumblr" onclick="window.open('https://www.tumblr.com/share?v=3&u=https://www.onlinevideoconverter.com/ko', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=400, top=200, width=550, height=440, toolbar=0, status=0');return false" class="btn-social"><i class="fa fa-tumblr-square fa-4x"></i></a></li>
							<li><a href="#" target="_blank" title="Share on Pinterest" onclick="window.open('https://pinterest.com/pin/create/button/?url=https://www.onlinevideoconverter.com/ko&description=비디오 파일 또는 비디오를 YouTube, Vimeo, Dailymotion에서 HD 품질의 여러 파일 형식으로 변환하실 수 있습니다. 소프트웨어 필요없이 완전 무료로 사용하실 수 있습니다!&media=https://www.onlinevideoconverter.com/assets/images/meta/siteImage.png', '_blank', 'scrollbars=0, resizable=1, menubar=0, left=400, top=200, width=750, height=590, toolbar=0, status=0');return false" class="btn-social"><i class="fa fa-pinterest-square fa-4x"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id='stepProcess' style="display: none;">
		<div id="loader">
			<div class="loader-msg">
				<div class="loader-msg-head"></div>
			</div>      
			<div class="box">
				<div class="loader-progress">0%</div>
				<div class="loader8"></div>
			</div>      
		</div>
	</div>

	<div id="stepShowError" style="display: none;">
		<div class="urlconverter-error">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div id="error"></div>
						<div class='error-button'> 
														<a href="https://www.onlinevideoconverter.com/ko/video-converter">다시 변환하기<i class="fa fa-angle-right fa-5"></i></a>	
								
						</div>
					</div>
				</div>
			</div>
			<div class='banner300-1'>
			</div>
		</div>
	</div>
</div>
	

	<div class="footer">
		<div class="container">
			<div class="row">
				
				<div class="col-sm-12 text-center">
					<ul class="footer-menu">
						<li><a href="https://www.onlinevideoconverter.com/ko/video-converter">YouTube 컨버터</a></li>
<!-- 						<li><a href="https://www.onlinevideoconverter.com/ko/cloud-converter">클라우드 컨버터</a></li>
                        <li><a href="https://www.onlinevideoconverter.com/ko/copyright-notice">저작권에주의</a></li>
                        <li><a href="https://www.onlinevideoconverter.com/ko/terms">이용 약관</a></li>
						<li><a href="https://www.onlinevideoconverter.com/ko/privacy-policy">개인정보보호</a></li>
						<li><a href="https://www.onlinevideoconverter.com/ko/contact">문의</a></li> -->
						<li><a href="https://www.onlinevideoconverter.com/ko/sitemap">사이트맵</a></li>
					</ul>
				</div>
<!-- 				<div class="col-sm-12 text-center">
					<p>&copy; 2017 OnlineVideoConverter.com - 2008년 이후 이어온 스파이웨어 없는 무료 개인 비디오 컨버터.</p>
				</div> -->
			</div>
		</div>
	</div>

	<a href="#" class="back-to-top"><i class="fa fa-angle-up fa-6"></i></a>	
	
	<script type="application/javascript">
		$( document ).ready(function() {  
			var urlBase = location.href.split("://");
			var getlangcode=urlBase[1].split("/");
			$("ul.ddlanguage li").each(function(){		
				var langcode=$(this).children('a').attr('id');		
				if(getlangcode[1] != "")
				{
					if(langcode==getlangcode[1])
					{
						$('#'+langcode).addClass('active'); 
						$("#dropdownMenu1").html($(this).children('a').html());
						$("#dropdownMenu1").append('<i class="fa fa-caret-down"></i>');
					}	
					else
					{
						$('#'+langcode).removeClass('active');  
					}
				}
				else
				{
					$('#en').addClass('active');		
				}
			});
		});
	</script>

    </body>
</html>