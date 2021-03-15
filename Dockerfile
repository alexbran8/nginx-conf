FROM nginx:1.13.8-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
ADD . ./test
# COPY --from=builder /usr/src/app/client/build /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]