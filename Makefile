NAME	= raycaster
CFLAGS	= -Wall -Wextra -Werror -Ofast
MLX_DIR	= ./MLX42
MLX = $(MLX_DIR)/build/libmlx42.a
LIBFT = libft/libft.a

HEADERS	= -I ./include/raycaster.h -I $(MLX_DIR)/include -I libft/includes
HEADERFILES = ./include/raycaster.h
LIBS	= $(MLX_DIR)/build/libmlx42.a -ldl -lglfw -pthread -lm
SRCS_DIR	= src/
SRCS = 	$(SRCS_DIR)raycaster.c\
	$(SRCS_DIR)errors_and_exits.c\
	$(SRCS_DIR)game_mechanics.c\
	$(SRCS_DIR)init_and_validate.c\
	$(SRCS_DIR)parse_file.c\
	$(SRCS_DIR)parse_utils.c\
	$(SRCS_DIR)render_dda.c\
	$(SRCS_DIR)render_dda_utils.c\
	$(SRCS_DIR)render_minimap.c\
	$(SRCS_DIR)render_sprites.c\
	$(SRCS_DIR)render_sprites_utils.c\
	$(SRCS_DIR)render_utils.c\
	$(SRCS_DIR)render.c\
	$(SRCS_DIR)wall_textures.c
OBJS	= $(SRCS:.c=.o)
OBJS	= $(SRCS:.c=.o)

all: $(MLX) $(LIBFT) $(NAME)

$(MLX):
	@if [ ! -d $(MLX_DIR) ]; then \
		git clone https://github.com/codam-coding-college/MLX42.git $(MLX_DIR); \
		fi
	cmake $(MLX_DIR) -B $(MLX_DIR)/build && make -C $(MLX_DIR)/build -j4

$(LIBFT):
	make -C libft

$(SRCS_DIR)%.o: $(SRCS_DIR)%.c $(HEADERFILES)
	$(CC) $(CFLAGS) -o $@ -c $< $(HEADERS)

$(NAME): $(OBJS) $(MLX) $(HEADERFILES)
	$(CC) $(OBJS) $(LIBS) $(LIBFT) $(HEADERS) -o $(NAME)

clean:
	rm -rf $(OBJS)
	rm -rf $(MLX_DIR)/build
	make -C libft clean

fclean: clean
	rm -rf $(NAME)
	make -C libft fclean
	@if [ -d $(MLX_DIR) ]; then \
		rm -rf $(MLX_DIR); \
		fi

re: clean all

.PHONY: all, clean, fclean, re, libmlx, libft
